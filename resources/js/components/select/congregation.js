import { getDataCongregations } from "../../getData";

const congregation_id = document.getElementById("congregation-id");

const selectCongregation = async () => {
    if (congregation_id) {
        const dataCongregations = await getDataCongregations();
        congregation_id.innerHTML = `<option value="" disabled selected>Pilih Jemaat</option>`;
        dataCongregations.forEach((congregation) => {
            congregation_id.innerHTML += `
                <option value="${congregation.id}">${congregation.name}</option>
            `;
        });
    }
};
selectCongregation();
