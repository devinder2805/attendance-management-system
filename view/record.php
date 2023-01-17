<?php
if (isset($_SESSION) && $_SESSION['login'] != true) {
    header("location:login.php");
}
require '../partials/header.php';
?>

<body>
    <!--navigation bar-->
    <nav class="navbar navbar-expand-lg bg-dark fs-5">
        <?php require '../partials/navbar.php'; ?>
    </nav>



    <!-- main content -->
    

    <!--footer-->

    <?php require '../partials/footer.php'; ?>

    <script>
        
    </script>
</body>
</head>