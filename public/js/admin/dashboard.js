//simple statistic chart
var ctx = document.getElementById("visitors").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: [
            "Березень 2018",
            "Квітень 2018",
            "Травень 2018",
            "Червень 2018",
            "Липень 2018",
            "Серпень 2018",
            "Вересень 2018",
            "Жовтень 2018",
            "Листопад 2018"],
        datasets: [{
            data: [12, 19, 31, 25,12, 32,45,16,47,14],
            fill: false,
            borderColor: [
                'rgba(255,99,132,1)'
            ],
            borderWidth: 2
        }]
    },
    options: {
        legend: {
            display: false
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});