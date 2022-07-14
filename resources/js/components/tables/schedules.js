import { Grid, html } from "gridjs";
// moment
import moment from "./../../moment";

const schedule_table = document.getElementById("schedule-table");
if (schedule_table) {
    const columns = ["No", "Nama Penyewa", "Tgl. Sewa", "Tujuan"];
    role !== "penyewa"
        ? columns.push({
              name: "Aksi",
              formatter: (cell) => html(`${cell}`),
          })
        : null;
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
            url: `/crud/schedule`,
            then: (data) =>
                data.map((item, index) => [
                    index + 1,
                    `${item.tenant.first_name} ${item.tenant.last_name}`,
                    `${moment(item.date_start).format(
                        "DD MMM YYYY"
                    )} - ${moment(item.date_end).format("DD MMM YYYY")}`,
                    item.purpose,
                    role !== "penyewa"
                        ? `
                    <button class="btn btn-outline-warning btn-sm btn-ubah" data-id="${item.id}">Edit</button>
                    <button class="btn btn-outline-danger btn-sm my-2 btn-hapus" data-id="${item.id}">Hapus</button>
                    `
                        : "",
                    ,
                ]),
        },
    }).render(schedule_table);
}
