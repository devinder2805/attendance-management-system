<div class="col border ps-0 pe-0" style="margin:auto;">
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <div class="px-3 py-2 fs-4 border bg-white"><b>Login</b></div>
        <div class="mb-3 ps-3 pe-3 pt-3">
            <label for="exampleInputEmail1" class="form-label">ID-Number</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                placeholder="id-Number" name="username" required>
        </div>
        <div class="mb-3 ps-3 pe-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"
                name="password" required>
        </div>
        <div class="px-3 py-2 fs-4 border bg-white">
            <button type="submit" class="btn btn-primary me-3 mb-5" name="loginAsStudent" value="true">Login as
                Student</button>
            <button type="submit" class="btn btn-secondary border-primary text-primary bg-white me-3 mb-5"
                name="loginAsStaff" value="true">Login as
                Staff</button>
        </div>

        <div id="registration-link" class="px-3 py-2 fs-4 border bg-white">
            <b>Don't have an account? </b>
            <a href="registration.php"> Register yourself</a>
        </div>
    </form>
</div>