import "./district-select";
import "./sub-district";
import "./congregation";

import { Select2 } from "select2";

const this_select = $(".select-basic");
console.log(this_select);

if (this_select.length > 0) {
    $(document).ready(function () {
        $(".select-basic").select2({
            width: "100%",
        });
    });
}
