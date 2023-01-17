<?php
if (isset($_SESSION) && $_SESSION['login'] != true) {
    header("location:login.php");
}

$update = false;
$errMeassge = '';
require '../module/change_profile.php';
require '../partials/header.php';


?>

<body>
    <!--navigation bar-->
    <nav class="navbar navbar-expand-lg bg-dark fs-5">
        <?php require '../partials/navbar.php'; ?>
    </nav>


    <div style="width:min(700px, 100%); margin: 10px auto">
        <?php
        if ($update) {
            echo ' 
            <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Success!</strong> Updated successfully
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div> ';
        }
        if ($errMeassge) {
            echo ' 
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <strong>Error!</strong> ' . $errMeassge . '
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div> ';
        }
        ?>
        <?php
        // including student and teacher profile based on login as
        if (isset($_SESSION["loginAsStaff"]) && $_SESSION["loginAsStaff"]) {
            require '../partials/teacher_profile.php';
        } else if (isset($_SESSION["loginAsStudent"]) && $_SESSION["loginAsStudent"]) {
            require '../partials/student_profile.php';
        }
        ?>
    </div>

    <!--footer-->

    <?php require '../partials/footer.php'; ?>


</body>
</head>