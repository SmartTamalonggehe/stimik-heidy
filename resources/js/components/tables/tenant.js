import { Grid, html } from "gridjs";
const tenant_table = document.getElementById("tenant-table");

if (tenant_table) {
    let url = `/crud/tenant`;
    if (role === "penyewa") {
        url = `/api/tenant`;
    }
    console.log(url);

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
            "NIK",
            "Nama Lengkap",
            "Jenis Kelamin",
            "Kabupaten / Kota",
            "Kecamatan",
            "Alamat",
            {
                name: "Foto KTP",
                formatter: (cell) => html(`${cell}`),
            },
            {
                name: "Status",
                formatter: (cell) => html(`${cell}`),
            },
            {
                name: "Aksi",
                formatter: (cell) => html(`${cell}`),
            },
        ],
        pagination: true,
        server: {
            url,
            then: (data) =>
                data.map((item, index) => {
                    const {
                        first_name,
                        last_name,
                        gender,
                        nik,
                        address,
                        ktp_picture,
                        status,
                        sub_district,
                    } = item;
                    return [
                        index + 1,
                        nik,
                        `${first_name} ${last_name}`,
                        gender,
                        sub_district.district.name,
                        sub_district.name,
                        address,
                        `<a href="${ktp_picture}" data-lightbox="gambar" data-title="${first_name}">
                            <img src="${ktp_picture}" class="img-thumbnail" alt="...">
                        </a>`,
                        status == "inactive"
                            ? '<span class="badge badge-danger">Tidak Aktif</span>'
                            : '<span class="badge badge-success">Aktif</span>',
                        `
                    <button class="btn btn-outline-warning btn-sm btn-ubah-status" data-id="${item.id}">Ubah Status</button>
                    `,
                    ];
                }),
        },
    }).render(tenant_table);
}
