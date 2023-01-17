<?php

use const OCI_NO_AUTO_COMMIT;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require 'dbconnect.php';

    $subject = $_POST["attendanceSubject"];
    $teacherId = $_SESSION["teacherId"];

    $record = (array) json_decode(($_POST["attendanceData"]));
    //echo var_dump($record) . "<br>";
    foreach ($record as $rollNo => $data) {
        $studentId = $data[0];
        $studentName = $data[1];
        if ($data[2] == true) {
            $attendanceStatus = 1;
        } else {
            $attendanceStatus = 0;
        }

        $query = "
            begin
                :success := att_management.add_attendance(
                    '$studentId', 
                    '$studentName', 
                    '$teacherId' ,
                    '$subject',
                    $attendanceStatus
                );
            end;
            ";
        $stid = oci_parse($connection, $query);
        oci_bind_by_name($stid, ":success", $success, -1);
        oci_execute($stid, OCI_NO_AUTO_COMMIT);

        if ($success == 0) {
            $error = true;
            oci_rollback($connection);
            break;
        }
        $error = false;

    }
    if (!$error) {
        oci_commit($connection);
    }

    oci_close($connection);
}
?>