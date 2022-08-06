// btn-cetak-pdf
const btnCetakPdf = document.getElementById("btn-cetak-pdf");
const yearSelect = document.getElementById("year");

if (btnCetakPdf) {
    let year = yearSelect.value;
    yearSelect.addEventListener("change", function () {
        year = yearSelect.value;
    });
    btnCetakPdf.addEventListener("click", function () {
        // open new window
        window.open(`/ketua/cetak/pdf/${year}`, "_blank");
    });
}
