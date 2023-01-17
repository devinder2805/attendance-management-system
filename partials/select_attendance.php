<style>
    #student-attendance-list {
        padding-top: 20px;
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        grid-template-columns: auto auto auto auto;
        justify-content: space-evenly;
    }

    .student-attendance {
        display: flex;
        justify-content: space-between;
        padding: 10px;
        border: 1px solid gray;
        border-radius: 5px;
        margin: 20px;
        width: 300px;

    }

    .student-attendance:hover {
        box-shadow: 1px 1px 3px 1px rgba(0, 0, 0, 0.2);
    }

    .student-attendance>* {
        padding: 10px;
    }

    .mark-attendance {
        display: flex;
        flex-direction: row;
        justify-content: space-evenly;
    }

    .mark-attendance>button {
        background-color: rgb(180, 180, 180);
        width: calc(3rem - 10px);
        text-align: center;
        padding: 0;
        color: white;
        font-size: 2rem;
        margin: 2px;
        cursor: pointer;
        border: none;
    }

    .mark-yes:hover {
        background-color: rgb(0, 200, 0);
    }

    .mark-no:hover {
        background-color: rgb(200, 0, 0);
    }
</style>



<?php

$subject = "";
if ($_SERVER['REQUEST_METHOD'] == "POST") {
    require '../module/dbconnect.php';

    $year = $_POST["batchYear"];
    $branch = $_POST["branch"];
    $section = $_POST["section"];
    $subject = $_POST["subject"];

    $batch = substr($year, 2, 2); // UE213032, => 2021 batch => extract 21

    $query = "
        select roll_no, name from stu_data 
        where section = '$section' and branch = '$branch' and roll_no like '__$batch%'
        order by roll_no asc 
        ";

    $stid = oci_parse($connection, $query);
    oci_execute($stid);
    oci_fetch_all($stid, $res);

    if (count($res) > 0) {
        $rollNo = $res["ROLL_NO"];
        $name = $res["NAME"];
        $len = count($rollNo);


        if ($len > 0) {
            echo "<br><div class='container' style='text-align:center'> <b> Click to mark present rest will be mark absent automatically </b> </div>";

            echo "<div id='student-attendance-list'>";
            for ($index = 0; $index < $len; $index++) {

                // adding student attendance list tile for marking attendance when record is found
                echo '
                    <div class="student-attendance">
                        <div class="student-info">
                            <b style="font-size: 1.2rem;" class="student-roll-no">' . $rollNo[$index] . '</b> <br>
                            <span class="student-name">' . $name[$index] . '</span>
                        </div>
                        <div class="mark-attendance">
                            <button class="mark-yes" ><i class="fa-solid fa-check"></i></button>
                            <button class="mark-no"><i class="fa-solid fa-x"></i></button>
                        </div>
                    </div>
                    ';
            }
            echo "</div>";

        } else {
            $errMeassge = "No record found";
            echo ' 
            <div class="alert alert-danger alert-dismissible fade show mt-2" role="alert">
                <strong>sorry!</strong> ' . $errMeassge . '
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div> ';
        }

    } else {
        $errMeassge = "unable to fetch record try again";
        echo ' 
        <div class="alert alert-danger alert-dismissible fade show mt-2" role="alert">
            <strong>Sorry!</strong> ' . $errMeassge . '
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div> ';
    }
    oci_close($connection);

}
?>

<form id="attendance-form" style="border:none">
    <?php
    if ($len > 0) {
        echo '
        <input type="hidden" name="attendanceSubject" value="' . $subject . '">
        <center>
            <input type="checkbox" id="checkbox" required> <label for="checkbox">Mark Rest of them as absent</label> <br><br>
            <button type="submit" id="attendance-submit" class="btn btn-primary">SUBMIT</button>
        </center>';
    }
    ?>
</form>

<script>

    try {
        let studentNameList = document.getElementsByClassName("student-name");
        let studentRollList = document.getElementsByClassName("student-roll-no");
        let markYes = document.getElementsByClassName("mark-yes");
        let markNo = document.getElementsByClassName("mark-no");

        const attendanceObject = new Map();
        let totalStudent = studentRollList.length;

        // assigning event to each button and appneding the record as required
        for (let index = 0; index < totalStudent; index++) {

            // for present
            markYes[index].addEventListener("click", function () {
                this.style.backgroundColor = "rgb(0, 200, 0)";
                this.nextElementSibling.style.backgroundColor = "rgb(180, 180, 180)";
                const arrayStatus = [
                    studentRollList[index].innerHTML,
                    studentNameList[index].innerHTML,
                    true
                ]

                attendanceObject.set(studentRollList[index].innerHTML, arrayStatus);

            })

            // for absent
            markNo[index].addEventListener("click", function () {
                this.style.backgroundColor = "rgb(200, 0, 0)";
                this.previousElementSibling.style.backgroundColor = "rgb(180, 180, 180)";
                const arrayStatus = [
                    studentRollList[index].innerHTML,
                    studentNameList[index].innerHTML,
                    false
                ]

                attendanceObject.set(studentRollList[index].innerHTML, arrayStatus);
            })
        }

        let checkBox = document.getElementById("checkbox");

        // add input-hidden element to form and assign value of attendanceObject when btn is pressed
        checkBox.addEventListener("click", function () {

            // checking all student attendance is marked if not mark absent default
            if (attendanceObject.size != totalStudent) {
                for (let index = 0; index < totalStudent; index++) {

                    let key = studentRollList[index].innerHTML;
                    let name = studentNameList[index].innerHTML;

                    // adding student which are not marked
                    if (!attendanceObject.has(key)) {
                        const arrayStatus = [
                            key,
                            name,
                            false
                        ]

                        attendanceObject.set(key, arrayStatus);
                    }
                }
            }

            // converting object to json
            let form = document.getElementById("attendance-form");
            let json = JSON.stringify(Object.fromEntries(attendanceObject));
            let input = "<input type='hidden' name='attendanceData' value = '" + json + "'>";

            form.innerHTML += input;
        })

        // sending attendance data to server arguments
        $(function () {
            $('#attendance-form').on('submit', function (event) {

                event.preventDefault();
                $.ajax({
                    type: 'post',
                    url: '../module/attendance_mark.php',
                    data: $('#attendance-form').serialize(),
                    success: function () {
                        alert('attendance was marked');
                        setTimeout(location.reload(), 500);
                    }
                });
            });
        });

    } catch (error) {
        // code to handle;
    }


</script>