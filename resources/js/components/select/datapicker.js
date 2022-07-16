import Pikaday from "pikaday";
import moment from "./../../moment";

const date_start = document.getElementById("date_start");
if (date_start) {
    // disable auto complete
    date_start.setAttribute("autocomplete", "off");
    // disable keyboard shortcuts
    date_start.setAttribute("readonly", "readonly");
}
const date_end = document.getElementById("date_end");
if (date_end) {
    // disable auto complete
    date_end.setAttribute("autocomplete", "off");
    // disable keyboard shortcuts
    date_end.setAttribute("readonly", "readonly");
}

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
        field: date_start,
        minDate: new Date(),
        maxDate: new Date(2020, 12, 31),
        onSelect: function () {
            date_start.value = moment(this.getDate()).format("Do MMMM YYYY");
            startDate = this.getDate();
            updateStartDate();
        },
    }),
    endPicker = new Pikaday({
        field: date_end,
        minDate: new Date(),
        maxDate: new Date(2020, 12, 31),
        onSelect: function () {
            date_end.value = moment(this.getDate()).format("Do MMMM YYYY");
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
