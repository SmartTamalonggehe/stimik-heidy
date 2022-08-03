import Pikaday from "pikaday";
import moment from "./../../moment";

const date_start_show = document.getElementById("date_start_show");
if (date_start_show) {
    // disable auto complete
    date_start_show.setAttribute("autocomplete", "off");
    // disable keyboard shortcuts
    date_start_show.setAttribute("readonly", "readonly");
}
const date_end_show = document.getElementById("date_end_show");
if (date_end_show) {
    // disable auto complete
    date_end_show.setAttribute("autocomplete", "off");
    // disable keyboard shortcuts
    date_end_show.setAttribute("readonly", "readonly");
}

// input date start and date end
const date_start = document.getElementById("date_start");
const date_end = document.getElementById("date_end");

let startDate,
    endDate,
    updateStartDate = function () {
        startPicker.setStartRange(startDate);
        endPicker.setStartRange(startDate);
        endPicker.setMinDate(startDate);
    },
    updateEndDate = function () {
        startPicker.setEndRange(endDate);
        startPicker.setMaxDate(endDate);
        endPicker.setEndRange(endDate);
    },
    startPicker = new Pikaday({
        field: date_start_show,
        minDate: new Date(),
        maxDate: new Date(2020, 12, 31),
        onSelect: function () {
            date_start_show.value = moment(this.getDate()).format(
                "Do MMMM YYYY"
            );
            date_start.value = moment(this.getDate()).format("YYYY-MM-DD");
            startDate = this.getDate();
            updateStartDate();
        },
    }),
    endPicker = new Pikaday({
        field: date_end_show,
        minDate: new Date(),
        maxDate: new Date(2020, 12, 31),
        onSelect: function () {
            date_end_show.value = moment(this.getDate()).format("Do MMMM YYYY");
            date_end.value = moment(this.getDate()).format("YYYY-MM-DD");
            endDate = this.getDate();
            updateEndDate();
        },
    }),
    _startDate = startPicker.getDate(),
    _endDate = endPicker.getDate();

if (_startDate) {
    startDate = _startDate;
    updateStartDate();
}

if (_endDate) {
    endDate = _endDate;
    updateEndDate();
}
