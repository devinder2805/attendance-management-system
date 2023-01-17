<style>
    #attendance-form-outer {
        border: 1px solid rgb(200, 200, 200);
        padding: 10px;
        display: flex;
        justify-content: space-evenly;
    }

    #attendance-form-outer>* {
        width: 48%;
    }
</style>

<div class="container fs-4 pt-3">
    <div>
        <div class="nav-item">
            <a class="nav-link text-dark">Welcome,&nbsp;</a>
            <a class="nav-link text-primary">
                <?php echo $_SESSION["teacherId"] . " " . $_SESSION["name"]; ?>
            </a>
        </div>
        <div class="nav-item">
            <a class="nav-link text-dark">Select Branch and class for attendance first&nbsp;</a>
        </div>
    </div>
    <hr>
    <form>
        <div id="attendance-form-outer" class="container fs-6">

            <div>
                <div class="form-group mb-4">
                    <label for="batch-year">Batch Year</label>
                    <select name="batchYear" class="form-control" id="batch-year">
                        <?php
                        $currentYear = date("Y");
                        for ($year = $currentYear; $year >= 2002; $year--) {
                            echo "<option value='$year'> $year </option>";
                        }
                        ?>
                    </select>
                </div>
                <div class="form-group mb-4">
                    <label for="branch">Branch</label>
                    <select name="branch" class="form-control" id="branch">
                        <option value="Computer Science and Engineering">CSE</option>
                        <option value="Mechanical Engineering">ME</option>
                        <option value="Information Technology">IT</option>
                        <option value="Electrical and communication Engineering">ECE</option>
                        <option value="Bio Technology">Bio Tech</option>
                    </select>
                </div>
                <button type="button" class="btn btn-primary" id="get-student-list">Get Results</button>
            </div>
            <div>
                <div class="form-group mb-4">
                    <label for="section">Section</label>
                    <select name="section" class="form-control" id="section">
                        <option value="1">1</option>
                        <option value="2">2</option>
                    </select>
                </div>
                <div class="form-group mb-4">
                    <label for="subject">Subject</label>
                    <select name="subject" class="form-control" id="subject">
                        <?php
                        $sub = $_SESSION['subject'];
                        echo "<option value='$sub'> $sub </option>";
                       
                        require '../module/dbconnect.php';

                        $query = "
                            select * from subject where subject_name <> '$sub'
                        ";
                        $stid = oci_parse($connection, $query);
                        oci_execute($stid);
                        oci_fetch_all($stid, $res);

                        foreach ($res["SUBJECT_NAME"] as $subname) {
                            echo "<option value='$subname'> $subname </option>";
                        }
                        oci_close($connection);

                        ?>

                    </select>
                </div>

            </div>
        </div>
    </form>
</div>


<div id="attendance-get-server">

</div>

<script>
    $(document).ready(function () {
        $('#get-student-list').click(function () {
            let data = {
                batchYear: $('#batch-year').val(),
                branch: $('#branch').val(),
                section: $('#section').val(),
                subject: $('#subject').val()
            };
            $('#attendance-get-server').load(
                '../partials/select_attendance.php',
                data,
            );
        })
    })
</script>