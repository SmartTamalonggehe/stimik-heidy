const toogle_password = document.querySelectorAll(".toogle-password");

const tooglePassword = () => {
    toogle_password.forEach((element) => {
        element.addEventListener("click", () => {
            const parent = element.parentElement;
            const password = parent.querySelector("input");
            element.innerHTML = "";

            if (password.type === "password") {
                password.type = "text";
                // element.innerHTML = '<i class="fas fa-eye-slash"></i>';
                element.innerHTML =
                    '<i data-feather="eye" width="15" height="24"></i>';
            } else {
                password.type = "password";
                element.innerHTML =
                    '<i data-feather="eye-off" width="15" height="24"></i>';
            }
            feather.replace();
        });
    });
};

if (toogle_password) {
    tooglePassword();
}
