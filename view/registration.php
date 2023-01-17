<?php

require '../partials/header.php';

$register = false;
$errMeassge = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require '../module/dbconnect.php';

    if (isset($_POST['registerAsStaff']) && $_POST["registerAsStaff"] == true) {
        require '../module/register_teacher.php';

    } else if (isset($_POST['registerAsStudent']) && $_POST["registerAsStudent"] == true) {
        require '../module/register_student.php';
    }
}
?>

<style>
    #registration-none {
        display: none;
    }
</style>

<body>
    <!--navigation bar-->
    <nav class="navbar navbar-expand-lg bg-dark fs-5">
        <?php require '../partials/navbar.php'; ?>
    </nav>


    <!--login page-->
    <div class="container" id="registration-page" style="display: block; width:min(700px, 100%); margin:10px auto">
        <?php
        if ($register) {
            echo ' 
            <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Success!</strong> You are Register
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
        <?php require '../partials/registration_page.php'; ?>
    </div>


    <!--footer-->

    <?php require '../partials/footer.php'; ?>


    <script>
        let element1 = document.getElementById("registration-show");
        let element2 = document.getElementById("registration-none");
        let clickCount = 0;

        let registerAsStaff = document.getElementById("register-as-staff");
        registerAsStaff.addEventListener("click", function () {
            clickCount++;
            element1.setAttribute("id", clickCount % 2 === 0 ? "registration-show" : "registration-none");
            element2.setAttribute("id", clickCount % 2 === 0 ? "registration-none" : "registration-show");
        })

        let registerAsStudent = document.getElementById("register-as-student");
        registerAsStudent.addEventListener("click", function () {
            clickCount++;
            element1.setAttribute("id", clickCount % 2 === 0 ? "registration-show" : "registration-none");
            element2.setAttribute("id", clickCount % 2 === 0 ? "registration-none" : "registration-show");
        })



    </script>

</body>
</head>

</html>