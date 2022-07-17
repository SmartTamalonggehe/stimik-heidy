import { Grid, html } from "gridjs";
// moment
import moment from "./../../moment";

const schedule_table = document.getElementById("schedule-table");
if (schedule_table) {
    const columns = ["No", "Nama Penyewa", "Tgl. Sewa", "Tujuan"];
    role !== "penyewa"
        ? columns.push(
              "Status",
              {
                  name: "Bukti Kirim",
                  formatter: (cell) => html(`${cell}`),
              },
              {
                  name: "Aksi",
                  formatter: (cell) => html(`${cell}`),
              }
          )
        : null;
    let url = `/crud/schedule`;
    if (role === "penyewa") {
        url = `/api/schedule`;
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
                    let btn_bukti = "";
                    if (item.proof) {
                        btn_bukti = `<a href="${item.proof.image}" data-lightbox="gambar" data-title="${item.proof.title}">
                                            <img src="${item.proof.image}" class="img-thumbnail" alt="...">
                                        </a>`;
                    }
                    return [
                        index + 1,
                        `${item.tenant.first_name} ${item.tenant.last_name}`,
                        `${moment(item.date_start).format(
                            "DD MMM YYYY"
                        )} - ${moment(item.date_end).format("DD MMM YYYY")}`,
                        item.purpose,
                        role !== "penyewa" ? status_text : "",
                        role !== "penyewa" ? btn_bukti : "",
                        role !== "penyewa"
                            ? `
                    <button class="btn btn-outline-warning btn-sm btn-ubah" data-id="${item.id}">Edit</button>
                    `
                            : "",
                        ,
                    ];
                }),
        },
    }).render(schedule_table);
}
