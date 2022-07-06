const nav_menu = document.querySelector(".nav-menu");
const href = window.location.href;
nav_menu.querySelectorAll("a").forEach((link) => {
    if (link.href === href) {
        // // find parent 3 levels up
        const parent = link.parentElement.parentElement.parentElement;
        // if parent class is collapsed, open it
        if (parent.classList.contains("collapsed")) {
            // find according-menu and change to fa fa-angle-down
            const menu = parent.querySelector(".nav-link .according-menu i");
            // change to fa fa-angle-down
            menu.classList.remove("fa-angle-right");
            menu.classList.add("fa-angle-down");
            // nav-submenu
            const submenu = parent.querySelector(".nav-submenu");
            // show submenu style display: block
            submenu.style.display = "block";
            link.classList.add("text-primary");
        } else {
            // add class my-active to the link
            link.classList.add("my-active");
        }
    }
});
const mode = document.querySelector(".mode");
// body class="dark-only"
// check mode in localStorage and set body class
if (localStorage.getItem("dark-mode") === "true") {
    document.body.classList.add("dark-only");
    // chage i child of mode to class fa fa-lightbulb-o
    mode.children[0].classList.remove("fa-moon-o");
    mode.children[0].classList.add("fa-lightbulb-o");
}
// toggle dark mode on click of button
mode.addEventListener("click", () => {
    localStorage.setItem(
        "dark-mode",
        document.body.classList.contains("dark-only")
    );
});
