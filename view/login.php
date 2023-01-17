<?php

$login = false;
$errMeassge = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require '../module/dbconnect.php';

    if (isset($_POST['loginAsStaff']) && $_POST["loginAsStaff"] == true) {
        require '../module/login_staff.php';

    } else if (isset($_POST['loginAsStudent']) && $_POST["loginAsStudent"] == true) {
        require '../module/login_student.php';
    }
}

require '../partials/header.php';

?>

<body>
    <!--navigation bar-->
    <nav class="navbar navbar-expand-lg bg-dark fs-5">
        <?php require '../partials/navbar.php'; ?>
    </nav>


    <!--login page-->
    <div class="container" id="login-page" style="display: block; width:min(700px, 100%); margin: 10px auto;">
        <?php
        if ($login) {
            echo ' 
            <div class="alert alert-success alert-dismissible fade show mt-1" role="alert">
            <strong>Success!</strong> You are logged in
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div> ';
        }
        if ($errMeassge) {
            echo ' 
            <div class="alert alert-danger alert-dismissible fade show mt1" role="alert">
            <strong>Error!</strong> ' . $errMeassge . '
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            </div> ';
        }
        ?>
        <?php require '../partials/login_page.php'; ?>

    </div>

    <!--footer-->

    <?php require '../partials/footer.php'; ?>

</body>
</head>

</html>