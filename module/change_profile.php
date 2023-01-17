<?php
$update = false;
$errMeassge = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require '../module/dbconnect.php';

    // changing profile if request is as teacher
    if (isset($_POST['teacherUpdation'])) {
        $teacherId = $_POST['teacherUpdation'];
        $mail = $_POST["mail"];
        $phone = $_POST["phone"];

        $query = "
            begin
                :success := att_management.update_record_teacher(
                    '$teacherId',
                    '$mail',
                    $phone
                );
            end;
            ";
        $stid = oci_parse($connection, $query);
        oci_bind_by_name($stid, ":success", $success, -1);
        oci_execute($stid);

        if ($success == 0) {
            $errMeassge = "Unable to update try again later";
        } else {
            $update = true;
            $errMeassge = "";
            $_SESSION["mail"] = $mail;
            $_SESSION["phone"] = $phone;
            oci_commit($connection);
        }

    } 
    // changing student profile if request comes from student
    else if (isset($_POST['studentUpdation'])) {
        $rollNo = $_POST['studentUpdation'];
        $mail = $_POST["mail"];
        $phone = $_POST["phone"];

        $query = "
            begin
                :success := att_management.update_record_student(
                    '$rollNo',
                    '$mail',
                     $phone
                );
            end;
            ";
        $stid = oci_parse($connection, $query);
        oci_bind_by_name($stid, ":success", $success, -1);
        oci_execute($stid);

        if ($success == 0) {
            $errMeassge = "Unable to update try again later";
        } else {
            $update = true;
            $errMeassge = "";
            $_SESSION["mail"] = $mail;
            $_SESSION["phone"] = $phone;
            oci_commit($connection);
        }

    } 
    else {
        $errMeassge = "Unable to fetch data";
    }
    oci_close($connection);
}

?>