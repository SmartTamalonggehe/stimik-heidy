// toastr
import toastr from "toastr";

let save_method;

const setSaveMethod = (set) => {
    save_method = set;
};

const form_crud = document.getElementById("modal-crud");
let modal_crud;

if (form_crud) {
    modal_crud = new bootstrap.Modal(form_crud, {});
}

toastr.options = {
    closeButton: true,
    debug: false,
    newestOnTop: false,
    progressBar: true,
    positionClass: "toast-top-right",
    preventDuplicates: false,
    onclick: null,
    showDuration: "300",
    hideDuration: "1000",
    timeOut: "5000",
    extendedTimeOut: "1000",
    showEasing: "swing",
    hideEasing: "linear",
    showMethod: "fadeIn",
    hideMethod: "fadeOut",
};

export { toastr, save_method, setSaveMethod, modal_crud };
