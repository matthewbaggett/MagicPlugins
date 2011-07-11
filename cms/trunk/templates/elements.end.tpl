<script>
$(function () {
    /**
     * Charts and Graphs Setup
     */
    var options = {
        grid: { hoverable: true, clickable: true, labelMargin: 10, borderWidth: 1, borderColor: "#ccc" },
        colors: ["#0077FF"],
        shadowSize: 2,
	        xaxis: {
	            mode: null,
	            ticks: [
	                [1, "1"],
	                [2, "3"],
	                [3, "5"],
	                [4, "7"],
	                [5, "9"],
	                [6, "11"],
	                [7, "13"],
	                [8, "15"],
	                [9, "17"],
	                [10, "19"],
	                [11, "21"],
	                [12, "23"],
	                [13, "25"],
	                [14, "27"],
	                [15, "29"]
	            ]
	        }
    };

    var d1 = [[0, 3], [4, 8], [8, 5], [9, 13], [15, 12]];

    $.plot($("#reporting-bar"), [
        {
            data: d1,
            bars: { show: true }
        }
    ], options);

    $.plot($("#reporting-bar2"), [
        {
            data: d1,
            bars: { show: true }
        }
    ], options);

    $.plot($("#reporting-filled"), [
        {
            data: d1,
            lines: { show: true, fill: true }
        }
    ], options);

    $.plot($("#reporting-line"), [
        {
            data: d1,
            lines: { show: true }
        }
    ], options);

    $.plot($("#reporting-line2"), [
        {
            data: d1,
            lines: { show: true }
        }
    ], options);

    $.plot($("#reporting-points"), [
        {
            data: d1,
            lines: { show: true },
            points: { show: true }
        }
    ], options);

});
</script>

</body>
</html>
