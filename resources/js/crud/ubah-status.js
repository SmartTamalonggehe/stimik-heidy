import Swal from "sweetalert2";
import { toastr } from "./tools";
// click body class constant .btn-ubah-status
document.addEventListener("click", function handleClick(event) {
    if (event.target.classList.contains("btn-ubah-status")) {
        // get data-id
        const id = event.target.dataset.id;

        Swal.fire({
            title: "Ganti Status",
            text: "Yakin akan mengganti status penyewa?",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Ganti",
            cancelButtonText: "Batal",
        }).then((result) => {
            if (result.isConfirmed) {
                axios({
                    method: "get",
                    url: `/crud/${route}/create`,
                    params: {
                        id,
                    },
                })
                    .then(function (response) {
                        // return console.log("response", response);
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
    }
});
