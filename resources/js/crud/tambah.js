import { toastr, save_method, setSaveMethod, modal_crud } from "./tools";

const btn_tambah = document.getElementById("btn-tambah");

btn_tambah.addEventListener("click", function () {
    // show modal data-modal-toggle="defaultModal"
    modal_crud.toggle();
    // set save_method
    setSaveMethod("tambah");
    // set attribut form
    document.getElementById("judul-form").innerText = "From Tambah Data";
    document.getElementById("tombol-form").innerText = "Simpan Data";
    // reset form
    resetForm();
});

document.getElementById("formKu").addEventListener("submit", function (e) {
    e.preventDefault();
    const formData = new FormData(this);
    // get data from form
    // const formData = $(this).serialize();
    const data = formData;
    const id_form = document.getElementById("id-form").value;

    let method;
    let url;
    if (save_method === "tambah") {
        method = "post";
        url = `/crud/${route}`;
    } else {
        method = "post";
        formData.append("_method", "PUT");
        url = `/crud/${route}/${id_form}`;
    }

    axios({
        method,
        url,
        data,
        headers: {
            "Content-Type": "multipart/form-data",
        },
    })
        .then(function (response) {
            toastr[response.data.type](
                response.data.pesan,
                response.data.judul
            );
            if (response.data.type !== "success") {
                return;
            }
            resetForm();
            my_grid.forceRender();
        })
        .catch(function (error) {
            console.log(error);
        });
});

const resetForm = () => {
    $(".selectReset").val("").trigger("change");
    $(".inputReset").val("");
    if (save_method !== "tambah") {
        modal_crud.hide();
    }
    removeImages();
};

const removeImages = () => {
    const foto = document.getElementById("foto");
    const fotoPreview = document.querySelector(".fotoPreview");
    if (fotoPreview) {
        fotoPreview.style.transition = "all 0.3s ease-in-out";
        fotoPreview.style.opacity = "0";
        // remove image
        setTimeout(() => {
            fotoPreview.style.backgroundImage = "";
            fotoPreview.style.display = "none";
            foto.value = "";
            // delete fotoPreview
            fotoPreview.remove();
        }, 100);
    }
    const buttonDelete = document.querySelector(".remove-image");
    if (buttonDelete) {
        buttonDelete.remove();
    }

    const foto_lama = document.querySelector(".foto_lama");
    if (foto_lama) {
        foto_lama.remove();
    }
};

export { removeImages };
