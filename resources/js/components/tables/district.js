import { Grid, html } from "gridjs";
if (route == "district") {
    // gridjs
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
            "Nama Kabupaten",
            {
                name: "Aksi",
                formatter: (cell) => html(`${cell}`),
            },
        ],
        pagination: true,
        server: {
            url: `/crud/${route}`,
            then: (data) =>
                data.map((card, index) => [
                    index + 1,
                    card.name,
                    `
                    <button class="btn btn-outline-warning btn-sm btn-ubah" data-id="${card.id}">Edit</button>
                    <button class="btn btn-outline-danger btn-sm my-2 btn-hapus" data-id="${card.id}">Hapus</button>
                    `,
                ]),
        },
    }).render(document.getElementById("district"));
}
