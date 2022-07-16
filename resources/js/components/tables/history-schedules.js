import axios from "axios";
import { Grid, html } from "gridjs";
// moment
import moment from "./../../moment";

const history_schedule_table = document.getElementById(
    "history-schedule-table"
);
if (history_schedule_table) {
    const columns = ["No", "Tgl. Sewa", "Tujuan"];
    const id = history_schedule_table.getAttribute("data-id");
    role !== "penyewa"
        ? columns.push({
              name: "Aksi",
              formatter: (cell) => html(`${cell}`),
          })
        : columns.push("Status", {
              name: "Bukti Kirim",
              formatter: (cell) => html(`${cell}`),
          });
    let url = `/crud/schedule/history/${id}`;
    if (role === "penyewa") {
        url = `/api/schedule/history/${id}`;
    }
    my_grid = new Grid({
        search: {
            enabled: true,
            selector: "#search",
        },
        language: {
            search: {
                placeholder: "🔍 ketik kata kunci...",
            },
            pagination: {
                previous: "Sebelumnya",
                next: "Berikutnya",
                showing: "Menampilkan",
                to: "sampai",
                of: "dari",
                results: "Data",
            },
            // no records found
            empty: {
                message: "Tidak ada data yang ditemukan",
            },
        },
        sort: true,
        columns,
        pagination: true,
        server: {
            url,
            then: (data) =>
                data.map((item, index) => {
                    const { status } = item;
                    let status_text = "";
                    if (status === "inactive") {
                        status_text = html(
                            `<span class="badge badge-danger">Ditolak</span>`
                        );
                    } else if (status === "processing") {
                        status_text = html(
                            `<span class="badge badge-warning">Proses</span>`
                        );
                    } else if (status === "active") {
                        status_text = html(
                            `<span class="badge badge-success">Diterima</span>`
                        );
                    }

                    return [
                        index + 1,
                        `${moment(item.date_start).format(
                            "DD MMM YYYY"
                        )} - ${moment(item.date_end).format("DD MMM YYYY")}`,
                        item.purpose,

                        status_text,
                        role !== "penyewa"
                            ? `
                    <button class="btn btn-outline-warning btn-sm btn-ubah" data-id="${item.id}">Edit</button>
                    <button class="btn btn-outline-danger btn-sm my-2 btn-hapus" data-id="${item.id}">Hapus</button>
                    `
                            : "",
                        ,
                    ];
                }),
        },
    }).render(history_schedule_table);

    // show hide button btn-tambah
    const btn_tambah = document.getElementById("btn-tambah");
    axios.get(url).then((res) => {
        const data = res.data;
        // sort data by updated_at desc
        const data_sort = data.sort((a, b) => {
            return new Date(b.updated_at) - new Date(a.updated_at);
        });
        const data_last = data_sort[0];
        if (data_last.status === "processing") {
            btn_tambah.style.display = "none";
        }
    });
}
