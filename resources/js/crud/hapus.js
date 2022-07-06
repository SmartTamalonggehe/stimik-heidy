import Swal from "sweetalert2";
import { toastr } from "./tools";

// click body selector btn-hapus

$(document).on("click", ".btn-hapus", function (e) {
    e.preventDefault();
    const href = $(this).data("id");
    Swal.fire({
        title: "Apa anda yakin?",
        text: "Data yang telah dihapus tidak dapat dikembalikan!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Hapus",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {
            axios({
                method: "delete",
                url: `/crud/${route}/${href}`,
            })
                .then(function (response) {
                    // return console.log(response);
                    toastr[response.data.type](
                        response.data.pesan,
                        response.data.judul
                    );
                    my_grid.forceRender();
                })
                .catch(function (error) {
                    console.log(error);
                });
        }
    });
});
