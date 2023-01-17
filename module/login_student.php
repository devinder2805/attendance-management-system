<?php
$login = false;
$errMeassge = "";

$username = $_POST["username"];
$password = $_POST["password"];



$query = "Select * from student_login where ROLL_NO='$username' and PASSWORD = '$password'";
$stid = oci_parse($connection, $query);
$result = oci_execute($stid);
if ($result) {
    oci_fetch_all($stid, $res);

   

    // check there is only one record found
    if (count($res["ROLL_NO"]) == 1) {
        $login = true;
        if (isset($_SESSION)) {

            // destory the current session and start a new session
            session_unset();
            session_destroy();

        }

        session_start();

        // setting session variables
        $_SESSION["login"] = true;
        $_SESSION["loginAsStudent"] = true;
        $_SESSION["rollNo"] = $username;

        // accessing the username through id
        $query = "
        select * from stu_data where ROLL_NO = '$username'
        ";
        $stid = oci_parse($connection, $query);
        oci_execute($stid);
        oci_fetch_all($stid, $res);

        $_SESSION["name"] = $res["NAME"][0];
        $_SESSION["branch"] = $res["BRANCH"][0];
        $_SESSION["section"] = $res["SECTION"][0];
        $_SESSION["mail"] = $res["EMAIL"][0];
        $_SESSION["phone"] = $res["PHONE"][0];


        // redirect user to index file.
        header("location:../");

    } else {
        $errMeassge = "Wrong Credentials! try again";
    }

} else {
    $errMeassge = "Trouble in login try again";
}
oci_close($connection);

?>