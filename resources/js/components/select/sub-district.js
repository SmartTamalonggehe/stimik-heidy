import { getDataDistrict, getShowDataSubDistrict } from "../../getData";
const sub_district_id = document.getElementById("sub-district-id");

const selectSubDistrict = async (id, selected = "") => {
    if (sub_district_id) {
        const dataSubDistricts = await getShowDataSubDistrict(id);
        sub_district_id.innerHTML = `<option value="" disabled selected>Pilih Kecamatan</option>`;
        dataSubDistricts.forEach((sub_district) => {
            sub_district_id.innerHTML += `
                <option value="${sub_district.id}"
                ${selected === sub_district.id ? "selected" : ""}>
            ${sub_district.name}
            </option>
            `;
        });
    }
};

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
        $("#district-id").on("change", function () {
            const id = $(this).val();
            selectSubDistrict(id);
        });
    }
};

selectDistrict();

export { selectDistrict, selectSubDistrict };
