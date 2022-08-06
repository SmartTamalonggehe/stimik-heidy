import { selectSubDistrict } from "../components/select/sub-district";
import { removeImages } from "./tambah";
import { modal_crud, setSaveMethod } from "./tools";

// click body class constant .btn-ubah-status
document.addEventListener("click", function handleClick(event) {
    if (event.target.classList.contains("btn-ubah")) {
        // get data-id
        const id = event.target.dataset.id;
        axios({
            method: "get",
            url: `/crud/${route}/${id}/edit`,
        })
            .then(function (response) {
                // show modal
                modal_crud.toggle();
                // set save_method
                setSaveMethod("ubah");
                // set attribut form
                document.getElementById("judul-form").innerText =
                    "From Ubah Data";
                document.getElementById("tombol-form").innerText =
                    "Simpan Data";
                // call formData
                console.log(route);
                formData(response.data);
            })
            .catch(function (error) {
                console.log(error);
            });
    }
});

const formData = (data) => {
    if (route == "galeri") {
        document.getElementById("id-form").value = data.id;
        document.getElementById("title").value = data.title;
        removeImages();
        // get elemnt id container_foto_lama
        const container_foto_lama = document.getElementById(
            "container_foto_lama"
        );
        // create div .foto_lama
        const foto_lama = document.createElement("div");
        foto_lama.classList.add("foto_lama");
        // add foto_lama to container_foto_lama
        container_foto_lama.appendChild(foto_lama);
        $(".foto_lama").html(
            `<h6 class="mt-3">Gambar Lama</h6> <img src="${data.image}" width="100%" height="150px">`
        );
    }
    if (route == "district") {
        document.getElementById("id-form").value = data.id;
        document.getElementById("name").value = data.name;
    }
    if (route == "sub-district") {
        document.getElementById("id-form").value = data.id;
        $("#district-id").val(data.district_id).trigger("change.select2");
        document.getElementById("name").value = data.name;
    }
    if (route == "congregation") {
        document.getElementById("id-form").value = data.id;
        document.getElementById("name").value = data.name;
    }
    if (route == "wijk") {
        document.getElementById("id-form").value = data.id;
        $("#congregation-id")
            .val(data.congregation_id)
            .trigger("change.select2");
        document.getElementById("name").value = data.name;
    }
    if (route == "gallery") {
        document.getElementById("id-form").value = data.id;
        document.getElementById("description").value = data.description;
        removeImages();
        // get elemnt id container_foto_lama
        const container_foto_lama = document.getElementById(
            "container_foto_lama"
        );
        // create div .foto_lama
        const foto_lama = document.createElement("div");
        foto_lama.classList.add("foto_lama");
        // add foto_lama to container_foto_lama
        container_foto_lama.appendChild(foto_lama);
        $(".foto_lama").html(
            `<h6 class="mt-3">Gambar Lama</h6> <img src="${data.image}" width="100%" height="150px">`
        );
    }
    if (route == "facility") {
        document.getElementById("id-form").value = data.id;
        document.getElementById("name").value = data.name;
        document.getElementById("amount").value = data.amount;
    }
    if (route == "tenant") {
        document.getElementById("id-form").value = data.id;
        document.getElementById("user-id").value = data.user_id;
        document.getElementById("nik").value = data.nik;
        document.getElementById("address").value = data.address;
        document.getElementById("first_name").value = data.first_name;
        document.getElementById("last_name").value = data.last_name;
        // gender
        data.gender == "Laki-laki"
            ? (document.getElementById("Laki-laki").checked = true)
            : (document.getElementById("Perempuan").checked = true);

        $("#district-id").val(data.sub_district.district.id).trigger("change");
        selectSubDistrict(data.sub_district.district.id, data.sub_district.id);

        // document.getElementById("Laki-laki").checked=true;
        removeImages();
        // get elemnt id container_foto_lama
        const container_foto_lama = document.getElementById(
            "container_foto_lama"
        );
        // create div .foto_lama
        const foto_lama = document.createElement("div");
        foto_lama.classList.add("foto_lama");
        // add foto_lama to container_foto_lama
        container_foto_lama.appendChild(foto_lama);
        $(".foto_lama").html(
            `<h6 class="mt-3">Gambar Lama</h6> <img src="${data.ktp_picture}" width="100%" height="150px">`
        );
    }
    if (route == "schedule") {
        document.getElementById("id-form").value = data.id;
        document.getElementById("status").value = data.status;
    }
};
