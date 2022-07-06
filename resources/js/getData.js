import axios from "axios";

const dataRoute = (page = 1, search = "") => {
    return axios({
        method: "GET",
        url: `/crud/${route}`,
        params: {
            page,
            search,
        },
    })
        .then((res) => {
            return res.data;
        })
        .catch((err) => {
            alert(`Terjadi kesalahan pada server ${err}`);
        });
};

const getDataDistrict = () => {
    return axios({
        method: "GET",
        url: `/crud/district`,
    })
        .then((res) => {
            return res.data;
        })
        .catch((err) => {
            alert(`Terjadi kesalahan pada server ${err}`);
        });
};

export { getDataDistrict, dataRoute };
