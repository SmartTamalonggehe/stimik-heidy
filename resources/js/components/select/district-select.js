import { getDataDistrict } from "../../getData";

const district_id = document.getElementById("district-id");

const selectDistrict = async () => {
    if (district_id) {
        const dataDistricts = await getDataDistrict();
        district_id.innerHTML = `<option value="" disabled selected>Pilih Kabupaten / Kota</option>`;
        dataDistricts.forEach((district) => {
            district_id.innerHTML += `
                <option value="${district.id}">${district.name}</option>
            `;
        });
    }
};
selectDistrict();
