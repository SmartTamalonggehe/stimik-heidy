import { Grid, html } from "gridjs";
import { changeStyleTable } from "../side-bar";

const sub_district_table = document.getElementById("sub-district-table");
if (sub_district_table) {
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
            "Kecamatan",
            "Kabupaten/Kota",
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
                    item.name,
                    item.district.name,
                    `
                    <button class="btn btn-outline-warning btn-sm btn-ubah" data-id="${item.id}">Edit</button>
                    <button class="btn btn-outline-danger btn-sm my-2 btn-hapus" data-id="${item.id}">Hapus</button>
                    `,
                ]),
        },
    }).render(sub_district_table);
    changeStyleTable();
}
