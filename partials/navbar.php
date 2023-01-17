<style>
    .navbar-toggler {
        border: 1px solid white;
        color:white;
    }
    .navbar-toggler-icon{
        color:white;
    }
</style>

<div class="container-fluid">
    <a class="navbar-brand ms-1 ps-0 text-light fs-4" href="#">UIET Attendance</a>
    <button class="navbar-toggler " type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto me-1 mb-lg-0">
            <li class="nav-item">
                <a class="nav-link text-light active" aria-current="page" href="/attendance/">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light" href="/attendance/view/profile.php">Profile</a>
            </li>
            <!-- <li class="nav-item">
                <a class="nav-link text-light " href="/attendance/view/record.php">Record</a>
            </li> -->
            <li class="nav-item">
                <a class="nav-link text-light" href="/attendance/view/login.php">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light" href="/attendance/view/registration.php">Register</a>
            </li>
            <?php
            if (isset($_SESSION["login"])) {
                echo '
                <li class="nav-item">
                    <button type="button" class="nav-link text-dark btn bg-white me-3 mb-4" id="logout-button">
                        Logout
                    </button>
                </li>';
            }
            ?>
        </ul>
    </div>
</div>