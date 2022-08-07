import { Grid, html } from "gridjs";
import { changeStyleTable } from "../side-bar";

const wijk_table = document.getElementById("wijk-table");
if (wijk_table) {
    my_grid = new Grid({
        search: {
            enabled: true,
            selector: "#search",
        },
        // sort column
        sort: true,

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
        },
        columns: [
            "No",
            "Jemaat",
            "Wijk",
            {
                name: "Aksi",
                formatter: (cell) => html(`${cell}`),
            },
        ],
        pagination: true,
        server: {
            url: `/crud/${route}`,
            then: (data) =>
                data.map((item, index) => [
                    index + 1,
                    item.congregation.name,
                    item.name,
                    `
                    <button class="btn btn-outline-warning btn-sm btn-ubah" data-id="${item.id}">Edit</button>
                    <button class="btn btn-outline-danger btn-sm my-2 btn-hapus" data-id="${item.id}">Hapus</button>
                    `,
                ]),
        },
    }).render(wijk_table);
    changeStyleTable();
}
