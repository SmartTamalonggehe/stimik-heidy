import ApexCharts from "apexcharts";
import { getDataSchedule } from "../../getData";

import moment from "../../moment";

const container = document.querySelector("#chart-year");

const getData = async (tahun = "") => {
    const data = await getDataSchedule();
    const dataSeries = [];
    const categories = [];

    // find data by month or year
    const dataByMonth = data.filter((item) => {
        return item.date_start.includes(tahun);
    });
    // count data by month date_start
    const dataByMonthCount = dataByMonth.reduce((acc, cur) => {
        const date = cur.date_start.split("-");
        const month = date[1];
        if (!acc[month]) {
            acc[month] = {
                month,
                count: 1,
            };
        } else {
            acc[month].count++;
        }
        return acc;
    }, {});
    // convert data by month to array
    const dataByMonthArray = Object.values(dataByMonthCount);
    // sort data by month
    const dataByMonthSorted = dataByMonthArray.sort((a, b) => {
        return a.month - b.month;
    });
    // push data by month to dataSeries
    dataByMonthSorted.forEach((item) => {
        dataSeries.push(item.count);
        categories.push(item.month);
    });

    // categories to month name
    categories.forEach((item, index) => {
        categories[index] = moment(item, "MM").format("MMMM");
    });

    chartSurat(dataSeries, categories);
};

getData();

const chartSurat = (dataSeries, categories) => {
    container.innerHTML = "";
    const options = {
        series: [
            {
                name: "Jumlah",
                data: dataSeries,
            },
        ],
        chart: {
            type: "bar",
            height: 350,
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: "80%",
                distributed: true,
                borderRadius: 10,
            },
        },
        dataLabels: {
            enabled: false,
        },
        stroke: {
            show: true,
            width: 2,
            colors: ["transparent"],
        },
        xaxis: {
            categories,
        },
        yaxis: {
            title: {
                text: "Jumlah Sewa",
            },
        },
        fill: {
            opacity: 1,
        },
        theme: {
            palette: "palette1", // upto palette10
        },
        legend: {
            show: false,
        },
    };

    const chart = new ApexCharts(container, options);
    chart.render();
};

const tahun = document.getElementById("tahun");
if (tahun) {
    tahun.addEventListener("change", () => {
        getData(tahun.value);
    });
}
