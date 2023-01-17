<?php
$login = false;
$errMeassge = "";

$username = $_POST["username"];
$password = $_POST["password"];

$query = "Select * from teacher_login where TEACHER_ID='$username' and PASSWORD = '$password'";
$stid = oci_parse($connection, $query);
$result = oci_execute($stid);
if ($result) {
    oci_fetch_all($stid, $res);

    // check if there is only one record found
    if (count($res["TEACHER_ID"]) == 1) {
        $login = true;
        if (isset($_SESSION)) {

            // destory the current session and start a new session
            session_unset();
            session_destroy();
           
        }
        session_start();

        // setting session variable
        $_SESSION["login"] = true;
        $_SESSION["loginAsStaff"] = true;
        $_SESSION["teacherId"] = $username;

        // acccessing name through id
        $query = "
            select * from teacher__data where TEACHER_ID = '$username'
        ";
        $stid = oci_parse($connection, $query);
        oci_execute($stid);
        oci_fetch_all($stid, $res);

        $_SESSION["name"] = $res["NAME"][0];
        $_SESSION["subjectId"] = $res["SUBJECT_ID"][0];
        $_SESSION["subject"] = $res["SUBJECT"][0];
        $_SESSION["mail"] = $res["EMAIL"][0];
        $_SESSION["phone"] = $res["PHONE"][0];


        // redirecting user to index file
        header("location:../");

    } else {
        $errMeassge = "Wrong Credentials! try again";
    }

} else {
    $errMeassge = "Trouble in login try again";
}
oci_close($connection);

?>