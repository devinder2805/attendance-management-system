<?php

$studentId = strtoupper($_POST["studentRollNo"]);
$studentName = $_POST["studentName"];
$studentBranch = $_POST["studentBranch"];
$studentSection = $_POST["studentSection"];
$studentNumber = $_POST["studentPhNumber"];
$studentMail = $_POST["studentMail"];
$password = $_POST["studentPassword"];
$cPassword = $_POST["studentRePassword"];

// check if the student already exists in twacher table
// name of student table is student__data

$exists = false;

$query = "
    select * from stu_data where ROLL_NO = '$studentId' or EMAIL = '$studentMail'
";
$stid = oci_parse($connection, $query);
oci_execute($stid);
oci_fetch_all($stid, $result);
if (count($result["ROLL_NO"]) >= 1) {
    $exists = true;
    $errMeassge = "Some the of credentials have already been used by some other user Roll_no, Email , Phone";

}


if (($password == $cPassword) && $exists == false) {
    // inserting into student data table

    $query = "
    begin
        :success := att_management.add_student(
            '$studentId',
            '$studentName',
            '$studentBranch',
            '$studentSection',
            '$studentMail',
            '$studentNumber',
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
        oci_commit($connection);
        oci_close($connection);
        sleep(1);
        header("location:../view/login.php");
    }


} else if ($password != $cPassword) {
    $errMeassge = "Match Both the password";
}



?>