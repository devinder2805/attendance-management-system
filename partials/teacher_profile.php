<div class="container fs-1 pt-3">
    <div>
        <div class="nav-item">
            <a class="nav-link text-dark">Welcome,&nbsp;</a>
            <a class="nav-link text-primary">
                <?php echo $_SESSION["teacherId"] . " " . $_SESSION["name"]; ?>
            </a>
        </div> <br>
        <div class="nav-item">
            <a class="nav-link text-dark">You can edit your profile here&nbsp;</a>
        </div>
    </div>

</div>
<hr>
<div>
    <div class="container border ps-0 pe-0" style="margin:auto;">
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileTeachId" class="form-label">Teacher Id</label>
                <input type="text" class="form-control" id="profileTeachId" name="teacherId"
                    value="<?php echo $_SESSION["teacherId"]; ?>" disabled>
            </div>
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileTeachName" class="form-label">NAME</label>
                <input type="text" class="form-control" id="profileTeachName" name="teacherName"
                    value="<?php echo $_SESSION["name"]; ?>" disabled>
            </div>
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileTeachSubject" class="form-label">Subject</label>
                <input type="text" class="form-control" id="profileTeachSubject" name="subject"
                    value="<?php echo $_SESSION["subject"]; ?>" disabled>
            </div>
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileSubId" class="form-label">Subject Id</label>
                <input type="text" class="form-control" id="profileSubId" name="subjectId"
                    value="<?php echo $_SESSION["subjectId"]; ?>" disabled>
            </div>
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileTeachMail" class="form-label">Email</label>
                <input type="text" class="form-control" id="profileTeachMail" name="mail"
                    value="<?php echo $_SESSION["mail"]; ?>" required>
            </div>
            <div class="mb-3 ps-3 pe-3 pt-3">
                <label for="profileTeachPhone" class="form-label">Phone</label>
                <input type="text" class="form-control" id="profileTeachPhone" name="phone"
                    value="<?php echo $_SESSION["phone"]; ?>" required>
            </div>


            <div class="px-3 py-2 fs-4 border bg-white">
                <button type="submit" class="btn btn-primary me-3 mb-5" name="teacherUpdation"
                    value="<?php echo $_SESSION["teacherId"] ?>">
                    Update
                </button>
                <button type="reset" class="btn btn-secondary border-primary text-primary bg-white me-3 mb-5">
                    reset
                </button>
            </div>


        </form>
    </div>

</div>