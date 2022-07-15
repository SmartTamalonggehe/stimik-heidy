import { getShowDataTenant } from "./../../getData";

const card_tenant = document.getElementById("card-tenant");

const inCard = (
    id,
    image,
    first_name,
    last_name,
    status,
    nik,
    gender,
    district,
    sub_district,
    address
) => {
    const theCard = `<div class="col-md-4 mt-4">
                        <a href="${image}" data-lightbox="gambar">
                            <img src="${image}" class="img-thumbnail" alt="...">
                        </a>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Data Diri ${first_name} ${last_name}
                            <span class="float-end">${
                                status == "inactive"
                                    ? '<span class="badge badge-danger">Tidak Aktif</span>'
                                    : '<span class="badge badge-success">Aktif</span>'
                            }</span>
                            </h5>
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>NIK</td>
                                        <td>:</td>
                                        <td>${nik}</td>
                                    </tr>
                                    <tr>
                                        <td>Jenis Kelamin</td>
                                        <td>:</td>
                                        <td>${gender}</td>
                                    </tr>
                                    <tr>
                                        <td>Kabupaten/kota - Kecamatan</td>
                                        <td>:</td>
                                        <td>${district} - ${sub_district}</td>
                                    </tr>
                                    <tr>
                                        <td>Alamat</td>
                                        <td>:</td>
                                        <td>${address}</td>
                                    </tr>
                                    <tr>
                                        <td colspan="3">
                                            <button class="btn btn-outline-warning btn-sm btn-ubah" data-id="${id}">Edit</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>`;
    card_tenant.innerHTML = theCard;
};

const getTenant = async (id) => {
    const dataTenant = await getShowDataTenant(id);
    const {
        ktp_picture,
        first_name,
        last_name,
        status,
        nik,
        gender,
        sub_district,
        address,
    } = dataTenant;

    inCard(
        id,
        ktp_picture,
        first_name,
        last_name,
        status,
        nik,
        gender,
        sub_district.district.name,
        sub_district.name,
        address
    );
};

if (card_tenant) {
    const id = card_tenant.dataset.id;
    getTenant(id);
}
