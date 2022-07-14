import moment from "moment";
import "moment-timezone";
moment.tz.setDefault("Asia/Jayapura");
moment.locale("id", {
    weekdaysShort: ["Ming", "Sen", "Sel", "Rab", "Kam", "Jum", "Sab"],
    weekdays: ["Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"],
    months: [
        "Januari",
        "Februari",
        "Maret",
        "April",
        "Mei",
        "Juni",
        "Juli",
        "Agustus",
        "September",
        "Oktober",
        "November",
        "Desember",
    ],
    monthsShort: [
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "Mei",
        "Jun",
        "Jul",
        "Ags",
        "Sep",
        "Okt",
        "Nov",
        "Des",
    ],
});

export default moment;
