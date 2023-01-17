<?php

$username = "attendance";
$password = "1234";
$hostname = "localhost";

$connection = oci_connect($username, $password, $hostname);

if (!$connection) {
  # something 
  echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
    <strong>Unable to connect!</strong> Please try again later.
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>';
  die();
}

?>