import _ from "lodash";
window._ = _;
import axios from "axios";
window.axios = axios;

import lightbox from "lightbox2";
try {
    lightbox.option({
        resizeDuration: 200,
        wrapAround: true,
    });
} catch (e) {}
