import _ from "lodash";
window._ = _;
import axios from "axios";
window.axios = axios;

window.$ = window.jQuery = require("jquery");
try {
    // window.Popper = require("popper.js").default;
    require("select2");
    $(".select2_basic").select2({
        tags: true,
        dropdownParent: $(".tampilModal"),
    });
} catch (e) {}

import lightbox from "lightbox2";
try {
    lightbox.option({
        resizeDuration: 200,
        wrapAround: true,
    });
} catch (e) {}
