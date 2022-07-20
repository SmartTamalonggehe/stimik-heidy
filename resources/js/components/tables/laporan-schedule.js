// laporan-schedule
import axios from "axios";
import { Grid, html } from "gridjs";
// moment
import moment from "./../../moment";

const laporan_schedule = document.getElementById("laporan-schedule");

const showTable = (year = "20") => {
    const columns = ["No", "Nama Penyewa", "Tgl. Sewa", "Tujuan"];
    const url = `/api/laporan/schedule/${year}`;
    my_grid = new Grid({
        language: {
            pagination: {
                previous: "Sebelumnya",
                next: "Berikutnya",
                showing: "Menampilkan",
                to: "sampai",
                of: "dari",
                results: "Data",
            },
            // no records found
            empty: {
                message: "Tidak ada data yang ditemukan",
            },
        },
        sort: true,
        columns,
        pagination: true,
        server: {
            url,
            then: (data) =>
                data.map((item, index) => {
                    return [
                        index + 1,
                        `${item.tenant.first_name} ${item.tenant.last_name}`,
                        `${moment(item.date_start).format(
                            "DD MMM YYYY"
                        )} - ${moment(item.date_end).format("DD MMM YYYY")}`,
                        item.purpose,
                    ];
                }),
        },
    }).render(laporan_schedule);
    my_grid.forceRender();
};

if (laporan_schedule) {
    showTable();

    const year = document.getElementById("year");
    year.addEventListener("change", () => {
        laporan_schedule.innerHTML = "";
        showTable(year.value);
    });
}
