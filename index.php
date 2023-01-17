<?php

if (isset($_SESSION) && $_SESSION['login'] != true) {
    header("location:view/login.php");
} else {
    header("location:view/home.php");
}
?>