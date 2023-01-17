<?php
if ($_SERVER["REQUEST_METHOD"] == "POST" && $_POST['subject']) {
    $subject = $_POST['subject'];
    $rollno = $_POST['rollNo'];

    require 'dbconnect.php';
    $query = "
        select count(*) total, sum(present) present from student_attendance 
        where stu_id = '$rollno' and subject = '$subject'
    ";
    $stid = oci_parse($connection, $query);
    oci_execute($stid);
    oci_fetch_all($stid, $res);

    $present = $res["PRESENT"][0];
    $total = $res["TOTAL"][0];

    if ($total == 0) {
        $errMeassge = '
        <div class="alert alert-danger alert-dismissible fade show mt-1" role="alert">
            <strong>Success!</strong> No attendance yet
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        ';
    }

}

?>

<script>
    // hole pie chart
    var xArray = ["PRESENT", "ABSENT"];
    var yArray = [
        Number("<?php echo $present; ?>"),
        Number("<?php echo $total - $present ?>")
    ];

    var layout = { title: "ATTENDANCE OVERVIEW" };

    var data = [
        {
            labels: xArray,
            values: yArray,
            hole: .4,
            type: "pie",
            marker: {
                colors: ['rgb(0, 200, 0)', 'rgb(200, 0, 0)']
            }
        }
    ];

    Plotly.newPlot("student-attendance-pie", data, layout);

</script>