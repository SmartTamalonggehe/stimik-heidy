import { Grid, html } from "gridjs";
import { changeStyleTable } from "../side-bar";
const gallery_table = document.getElementById("gallery-table");

if (gallery_table) {
    let url = `/crud/${route}`;
    if (role === "penyewa") {
        url = `/api/${route}`;
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
        },
        sort: true,
        columns: [
            "No",
            {
                name: "Gambar",
                formatter: (cell) => html(`${cell}`),
            },
            "Keterangan",
            {
                name: "Aksi",
                formatter: (cell) => html(`${cell}`),
            },
        ],
        pagination: true,
        server: {
            url,
            then: (data) =>
                data.map((card, index) => [
                    index + 1,
                    ` <a href="${card.image}" data-lightbox="gambar" data-title="${card.title}">
                            <img src="${card.image}" class="img-thumbnail" alt="...">
                        </a>`,
                    card.description,
                    `
                    <button class="btn btn-outline-warning btn-sm btn-ubah" data-id="${card.id}">Edit</button>
                    <button class="btn btn-outline-danger btn-sm my-2 btn-hapus" data-id="${card.id}">Hapus</button>
                    `,
                ]),
        },
    }).render(gallery_table);
    changeStyleTable();
}
