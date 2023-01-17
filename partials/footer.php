<div class="container" style="width:min(700px, 100%); margin: auto">
    <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
        </ul>
        <p class="float-end"><a href="#">Back to top</a></p>
        <p>© <?php echo date("Y")?> Company, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
    </footer>
</div>

<!-- styling for logout confirmation -->
<style>
    /*styling for logout box */
    #logout-outer-box {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100vh;
        display: none;
        background-color: rgba(0, 0, 0, 0.2);
    }

    #logout-box {
        width: min(400px, 80%);
        padding: 80px 40px;
        box-shadow: 0px 0px 0px 1px rgba(0, 0, 0, 0.5);
        background-color: white;
        border-radius: 10px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        display: none;
    }

    #logout-box>h4 {
        margin-bottom: 40px;
    }

    #confirm {
        display: flex;
        justify-content: space-evenly;
    }
</style>

<div id="logout-outer-box">

</div>
<div id="logout-box">
    <h4 style="text-align: center;">Do you want to Logout?</h4>
    <div id="confirm">
        <a class="btn btn-primary me-3 mb-4" href="/attendance/module/logout.php">Yes</a>
        <button type="button" class="btn border-primary text-primary bg-white me-3 mb-4" id="logout-cancel">
            No</button>
    </div>
</div>

<script>
    {

        let logoutButton = document.getElementById("logout-button");
        let outerBox = document.getElementById("logout-outer-box");
        let logoutBox = document.getElementById("logout-box");
        logoutButton.addEventListener("click", function () {

            outerBox.style.display = "block";
            logoutBox.style.display = "block";
        }
        );

        outerBox.addEventListener("click", function () {
            this.style.display = "none";
            logoutBox.style.display = "none";
        })

        let logoutCancel = document.getElementById("logout-cancel")
        logoutCancel.addEventListener("click", function () {
            outerBox.style.display = "none";
            logoutBox.style.display = "none";
        })
    }
</script>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous">
    </script>