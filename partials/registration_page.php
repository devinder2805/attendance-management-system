<div class="container mt-2 bg-light fw-semibold">
    <div class="">
        <div class=" border ps-0 pe-0" style="margin-bottom: 30px" id="registration-show">
            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                <div class="px-3 py-2 fs-4 border bg-white">Sign Up As Student</div>
                <div class="ps-3 pe-3 pt-3">
                    <label for="exampleRollNo" class="form-label">Roll_no</label>
                    <input type="text" class="form-control" id="exampleRollNo" placeholder="Roll no"
                        name="studentRollNo" required>
                </div>
                <div class="ps-3 pe-3 pt-3">
                    <label for="exampleInputStuName" class="form-label">Name</label>
                    <input type="text" class="form-control" id="exampleInputStuName" placeholder="Name"
                        name="studentName" required>
                </div>

                <div class="ps-3 pe-3 pt-3">
                    <label for="exampleStuBranch" class="form-label">Branch</label>
                    <select class="form-control" id="exampleStuBranch" name="studentBranch" required>
                        <option value="Computer Science and Engineering">CSE</option>
                        <option value="Mechanical Engineering">ME</option>
                        <option value="Information Technology">IT</option>
                        <option value="Electrical and communication Engineering">ECE</option>
                        <option value="Bio Technology">Bio Tech</option>
                    </select>

                </div>
                <div class="ps-3 pe-3 pt-3">
                    <label for="exampleStuSection" class="form-label">Section</label>
                    <select class="form-control" id="exampleStuSection" name="studentSection" required>
                        <option value="1">1</option>
                        <option value="2">2</option>
                    </select>

                </div>
                <div class="ps-3 pe-3 pt-3">
                    <label for="exampleInputStuPhNumber" class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" id="exampleInputStuPhNumber" placeholder="Phone"
                        name="studentPhNumber" required>
                </div>
                <div class="mb-3 ps-3 pe-3 pt-3">
                    <label for="exampleInputStuEmail1" class="form-label">Email ID</label>
                    <input type="email" class="form-control" id="exampleInputStuEmail1" aria-describedby="emailHelp"
                        placeholder="Email" name="studentMail" required>
                </div>
                <div class="mb-3 ps-3 pe-3">
                    <label for="exampleInputstuPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="exampleInputstuPassword1" name="studentPassword"
                        placeholder="Password" required>
                </div>
                <div class="mb-3 ps-3 pe-3">
                    <label for="exampleInputstuPassword2" class="form-label">Re-type Password</label>
                    <input type="password" class="form-control" id="exampleInputstuPassword2"
                        placeholder="Re-type Password" name="studentRePassword" required>
                </div>
                <div class="mb-3 form-check ms-3">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
                <div class="mb-3 ps-3 pe-3">
                    <button type="submit" class="btn btn-primary me-3 mb-4" name="registerAsStudent" value="true">Sign
                        Up as Student</button>
                    <button type="button" class="btn btn-secondary border-primary text-primary bg-white me-3 mb-4"
                        id="register-as-staff">
                        Sign Up as Staff</button>
                </div>
                <div class="mb-3 ps-3 pe-3">
                    <b>Already have an account?</b> <a href="../view/login.php">Login </a>
                </div>
            </form>
        </div>
        <div class="border ps-0 pe-0" id="registration-none">
            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                <div class="px-3 py-2 fs-4 border bg-white">Sign Up as Staff</div>
                <div class="ps-3 pe-3 pt-3">
                    <label for="exampleInputTeacherId" class="form-label">Teacher Id</label>
                    <input type="text" class="form-control" id="exampleInputTeacherId" placeholder="Teacher Id"
                        name="teacherId" required>
                </div>
                <div class="ps-3 pe-3 pt-3">
                    <label for="exampleInputName" class="form-label">Name</label>
                    <input type="text" class="form-control" id="exampleInputName" placeholder="Name" name="teacherName"
                        required>
                </div>
                <div class="ps-3 pe-3 pt-3">
                    <label for="exampleSubjectId" class="form-label">Subject Id</label>
                    <select name="subjectId" id="exampleSubjectId" class="form-control" required>
                        <?php
                        require '../module/dbconnect.php';

                        $query = "
                            select * from subject order by subject_name
                        ";
                        $stid = oci_parse($connection, $query);
                        oci_execute($stid);
                        oci_fetch_all($stid, $res);
                        
                        foreach ($res["SUBJECT_ID"] as $subid) {
                            echo "<option value='$subid'> $subid </option>";
                        }
                        oci_close($connection);

                        ?>

                    </select>

                </div>
                <div class="ps-3 pe-3 pt-3">
                    <label for="exampleSubjectName" class="form-label">Subject Name</label>
                    <select name="subjectName" id="exampleSubjectName" class="form-control" required>

                        <?php

                        foreach ($res["SUBJECT_NAME"] as $subname) {
                            echo "<option value='$subname'> $subname </option>";
                        }


                        ?>

                    </select>

                </div>
                <div class="ps-3 pe-3 pt-3">
                    <label for="exampleInputPhNumber" class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" id="exampleInputPhNumber" placeholder="Phone"
                        name="teacherPhNumber" required>
                </div>
                <div class="mb-3 ps-3 pe-3 pt-3">
                    <label for="exampleInputEmail1" class="form-label">Email ID</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
                        placeholder="Email" name="teacherMail" required>
                </div>
                <div class="mb-3 ps-3 pe-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"
                        name="teacherPassword" required>
                </div>
                <div class="mb-3 ps-3 pe-3">
                    <label for="exampleInputPassword2" class="form-label">Re-type Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword2"
                        placeholder="Re-type Password" name="teacherRePassword" required>
                </div>
                <div class="mb-3 form-check ms-3">
                    <input type="checkbox" class="form-check-input" id="exampleCheck2" required>
                    <label class="form-check-label" for="exampleCheck2">Check me out</label>
                </div>
                <div class="mb-3 ps-3 pe-3">
                    <button type="submit" class="btn btn-primary me-3 mb-4" name="registerAsStaff" value="true">Sign Up
                        as Staff</button>
                    <button type="button" class="btn btn-secondary border-primary text-primary bg-white me-3 mb-4"
                        id="register-as-student">
                        Sign Up as student</button>
                </div>
                <div class="mb-3 ps-3 pe-3">
                    <b>Already have an account?</b> <a href="../view/login.php">Login </a>
                </div>
            </form>
        </div>
    </div>
</div>