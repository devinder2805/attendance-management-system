<?php

if (isset($_SESSION) && $_SESSION['login'] != true) {
    header("location:login.php");
}
require '../partials/header.php';
?>

<!-- for student attendance plot -->
<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
<body>
    <!--navigation bar-->
    <nav class="navbar navbar-expand-lg bg-dark fs-5">
        <?php require '../partials/navbar.php'; ?>
    </nav>

    <!-- main content -->
    <div id="student-attendance" style="width:min(700px, 100%); margin: 10px auto">
        <?php
        if (isset($_SESSION["loginAsStaff"])) {
            require '../partials/teacher_home_scr.php';
        } else if (isset($_SESSION["loginAsStudent"])){
            require '../partials/student_home_scr.php';
        }

        ?>
    </div>

    <!--footer-->

    <?php require '../partials/footer.php'; ?>

</body>
</head>

</html>