<?php

$register = false;
$errMeassge = "";

$teacherId = $_POST["teacherId"];
$teacherName = $_POST["teacherName"];
$subjectId = strtoupper($_POST["subjectId"]);
$subjectName = $_POST["subjectName"];
$teacherNumber = $_POST["teacherPhNumber"];
$teacherMail = $_POST["teacherMail"];
$password = $_POST["teacherPassword"];
$cPassword = $_POST["teacherRePassword"];

// check if the teacher already exists in tacher table
// name of teacher table is teacher__data



$exists = false;

$query = "select * from teacher__data where teacher_id = '$teacherId' ";
$stid = oci_parse($connection, $query);
oci_execute($stid);
oci_fetch_all($stid, $result);
if (count($result["TEACHER_ID"]) >= 1) {
    $exists = true;
    $errMeassge = "Some the of credentials have already been used by some other user";


}


if (($password == $cPassword) && $exists == false) {
    // inserting into teacher data table
    $query = "
    begin
        :success := att_management.add_teacher(
            '$teacherId',
            '$teacherName',
            '$subjectId',
            '$subjectName',
            '$teacherMail',
            '$teacherNumber',
            '$password'
        );
    end;
    ";
    $stid = oci_parse($connection, $query);
    oci_bind_by_name($stid, ":success", $success, -1);
    oci_execute($stid);

    if ($success == 0) {
        $errMeassge = "Unable to insert try again later";
    } else {
        $register = true;
        $errMeassge = "";
        $_SESSION["mail"] = $mail;
        $_SESSION["phone"] = $phone;
        oci_commit($connection);
        oci_close($connection);
        sleep(1);
        header("location:../view/login.php");
    }

} else if ($password != $cPassword) {
    $errMeassge = "Match Both the password";
}


?>