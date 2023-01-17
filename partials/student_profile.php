<div class="container fs-1 pt-3">
    <div>
        <div class="nav-item">
            <a class="nav-link text-dark">Welcome,&nbsp;</a>
            <a class="nav-link text-primary">
                <?php echo $_SESSION["rollNo"] . " " . $_SESSION["name"]; ?>
            </a>
        </div> <br>
        <div class="nav-item">
            <a class="nav-link text-dark">You can edit your profile here&nbsp;</a>
        </div>
    </div>
</div>

<div style="width:min(100%,  700px); margin:20px auto;">
    <div class="col border ps-0 pe-0" style="margin:auto;">
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileStuId" class="form-label">Roll No</label>
                <input type="text" class="form-control" id="profileStuId" name="rollNo"
                    value="<?php echo $_SESSION["rollNo"]; ?>" disabled>
            </div>
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileStuName" class="form-label">NAME</label>
                <input type="text" class="form-control" id="profileStuName" name="studentName"
                    value="<?php echo $_SESSION["name"]; ?>" disabled>
            </div>
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileStuBranch" class="form-label">Branch</label>
                <input type="text" class="form-control" id="profileStuBranch" name="branch"
                    value="<?php echo $_SESSION["branch"]; ?>" disabled>
            </div>
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileSubId" class="form-label">Subject Id</label>
                <input type="text" class="form-control" id="profileSubId" name="section"
                    value="<?php echo $_SESSION["section"]; ?>" disabled>
            </div>
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileStuMail" class="form-label">Email</label>
                <input type="text" class="form-control" id="profileStuMail" name="mail"
                    value="<?php echo $_SESSION["mail"]; ?>" required>
            </div>
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileStuPhone" class="form-label">Phone</label>
                <input type="text" class="form-control" id="profileStuPhone" name="phone"
                    value="<?php echo $_SESSION["phone"]; ?>" required>
            </div>


            <div class="px-3 py-2 fs-4 border bg-white">
                <button type="submit" class="btn btn-primary me-3 mb-5" name="studentUpdation"
                    value="<?php echo $_SESSION["rollNo"] ?>">
                    Update
                </button>
                <button type="reset" class="btn btn-secondary border-primary text-primary bg-white me-3 mb-5">
                    reset
                </button>
            </div>


        </form>
    </div>

</div>