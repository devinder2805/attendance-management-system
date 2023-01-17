<?php
require '../module/dbconnect.php';

?>

<style>
    .attendance-output {
        margin: 20px 5px;
        border-radius: 15px;
        padding: 10px 5px;
        box-shadow: 2px 2px 10px 1px rgba(0, 0, 0, 0.5);
        overflow: hidden;
    }

    .description {
        padding: 10px;
        font-weight: bold;
        text-align: center;
    }

    #student-attendance-bar {
        width: 100%;
        max-width: 700px;

    }

    #selectSubject {
        width: 200px;
        padding: 5px;
        border-radius: 2px;
    }
</style>
<div class="container fs-4 pt-3">
    <div>
        <div class="nav-item">
            <a class="nav-link text-dark">Welcome,&nbsp;</a>
            <a class="nav-link text-primary">
                <?php echo $_SESSION["rollNo"] . " " . $_SESSION["name"]; ?>
            </a>
        </div>
        <div class="nav-item">
            <a class="nav-link text-dark">Select subject to get attendance status</a>
        </div>
    </div>
</div>


<div class="attendance-output">
    <div class="description" style="text-align:left">
        <label for="selectSubject">Subject</label>
        <select name="subject" id="selectSubject">
            <?php
            // selecting subject name from database 
            $query = "
                      select subject_name from subject order by subject_name
                        ";
            $stid = oci_parse($connection, $query);
            oci_execute($stid);
            oci_fetch_all($stid, $res);
            echo "<option value=''>None</option>";
            foreach ($res["SUBJECT_NAME"] as $subname) {
                echo "<option value='$subname'> $subname</option>";
            }
            oci_close($connection);

            ?>
        </select>
    </div>
    <div id="student-attendance-pie"></div>

</div>

<?php

$roll = $_SESSION["rollNo"];
$query = "
begin
    :cursor := att_management.latest_record('$roll');
end;    
";
$stid = oci_parse($connection, $query);

$p_cursor = oci_new_cursor($connection);

oci_bind_by_name($stid, ":cursor", $p_cursor, -1, OCI_B_CURSOR);
oci_execute($stid);
oci_execute($p_cursor);

oci_fetch_all($p_cursor, $cursor);
oci_close($connection);

?>
<div class="attendance-output">
    <div class="description">Record of last 5 recent subject attendance</div>
    <div id="student-attendance-bar"></div>
    <div class="description"></div>
</div>

<div id="myPlot"></div>

<div id="unique">

</div>
<script>

    $(document).ready(function () {
        // double bar graph for last 5 subject attendance
        // converting data fetch from cursor into json
        let latestRecord = '<?php echo json_encode($cursor) ?>';

        // converting json to js object;
        latestRecord = JSON.parse(latestRecord);

        var total = {
            x: latestRecord.SUBJECT.slice(0, 5),
            y: latestRecord.TOTAL.slice(0, 5),
            name: 'TOTAL',
            type: 'bar'
        };

        var present = {
            x: latestRecord.SUBJECT.slice(0, 5),
            y: latestRecord.PRESENT.slice(0, 5),
            name: 'PRESENT',
            type: 'bar'
        };

        var data = [total, present];

        var layout = { barmode: 'group' };

        Plotly.newPlot('student-attendance-bar', data, layout);


        // displaying doughnut chat whenever the input field changes;
        $('select').on('change', function () {
            let data = {
                subject: $('#selectSubject').val(),
                rollNo: "<?php echo $_SESSION['rollNo']; ?>",
            };
            $('#unique').load(
                '../module/graph_attendance.php',
                data,
            );
        })
    })
</script>