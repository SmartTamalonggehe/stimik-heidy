import { Grid, html } from "gridjs";
import { changeStyleTable } from "../side-bar";
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
            "Email",
            "Password",
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
                        user,
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
                        user.email,
                        user.show_password,
                        `
                        <div class="d-flex">
                            <button class="btn btn-outline-warning btn-sm btn-ubah-status" data-id="${item.id}">Ubah Status</button>
                            <button class="btn btn-outline-danger btn-sm btn-hapus" data-id="${item.id}">Hapus</button>
                            <button class="btn btn-outline-success btn-sm btn-ubah" data-id="${item.id}">Ubah</button>
                        </div>
                    `,
                    ];
                }),
        },
    }).render(tenant_table);
    changeStyleTable();
}
