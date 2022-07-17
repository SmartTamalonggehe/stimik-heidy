// btn-upload-bukti

import Swal from "sweetalert2";
import { toastr } from "./tools";

const form_upload_bukti = document.querySelector("#frm-upload-bukti");

if (form_upload_bukti) {
    form_upload_bukti.addEventListener("submit", (event) => {
        event.preventDefault();
        const foto = form_upload_bukti.querySelector("#foto");
        if (foto.files.length === 0) {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Silahkan pilih gambar terlebih dahulu!",
            });
            return;
        }
        const formData = new FormData(form_upload_bukti);
        const data = formData;
        const method = "post";
        const url = `/crud/proof`;

        Swal.fire({
            title: "Upload Bukti",
            text: "Bukti yang telah diupload tidak bisa diubah atau dihapus?",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Upload",
            cancelButtonText: "Batal",
        }).then((result) => {
            if (result.isConfirmed) {
                axios({
                    method,
                    url,
                    data,
                })
                    .then(function (response) {
                        // return console.log("response", response);
                        // return console.log(response);
                        toastr[response.data.type](
                            response.data.pesan,
                            response.data.judul
                        );
                        if (response.data.type === "success") {
                            my_grid.forceRender();
                            form_upload_bukti.reset();
                            $("#modal-upload").modal("hide");
                            // show swal
                            Swal.fire({
                                icon: "success",
                                title: "Berhasil",
                                text: "Bukti berhasil diupload. Silahkan menunggu konfirmasi dari admin.",
                            });
                        }
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
            }
        });
    });
}
