import { removeImages } from "./tambah";
import { modal_crud, setSaveMethod } from "./tools";

$(document).on("click", ".btn-ubah", function (e) {
    e.preventDefault();
    const href = $(this).data("id");
    console.log(href);
    axios({
        method: "get",
        url: `/crud/${route}/${href}/edit`,
    })
        .then(function (response) {
            // show modal
            modal_crud.toggle();
            // set save_method
            setSaveMethod("ubah");
            // set attribut form
            document.getElementById("judul-form").innerText = "From Ubah Data";
            document.getElementById("tombol-form").innerText = "Simpan Data";
            // call formData
            console.log(route);
            formData(response.data);
        })
        .catch(function (error) {
            console.log(error);
        });
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
        $("#district-id").val(data.district_id).trigger("change");
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
};
