// function tomSelect export default
require("select2");
export default function select2() {
    try {
        $(".select2_basic").select2({
            tags: true,
            dropdownParent: $(".tampilModal"),
        });
    } catch (e) {}
}
select2();
