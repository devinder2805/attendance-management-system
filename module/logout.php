<?php

session_unset();
session_destroy();
sleep(0.5);
header("location:../view/login.php");


?>