import { Grid, html } from "gridjs";
if (route == "gallery") {
    // gridjs
    my_grid = new Grid({
        search: {
            enabled: true,
        },
        sort: true,
        columns: [
            "No",
            "Judul",
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
            url: `/crud/${route}`,
            then: (data) =>
                data.map((card, index) => [
                    index + 1,
                    card.title,
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
    }).render(document.getElementById("wrapper"));
}
