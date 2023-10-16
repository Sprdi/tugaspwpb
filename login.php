<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <style>
            .input_box {
                display: flex;
                align-items: center;
                max-width: 500px;
            }

            .input_box input {
                padding: 10px 0;
            }

            .input_box img {
                width: 35px;
                cursor: pointer;
                display: flex;
                margin-left: -10%;
            }
        </style>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                        <form method="POST" action="cek_login.php">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="text" placeholder="name@example.com" name="username" />
                                                <label for="inputEmail">Username</label>
                                            </div>
                                            <div class="form-floating mb-3 input_box">
                                                <input class="form-control" id="inputPassword" type="password" placeholder="Password" name="password" id="password"/>
                                                <label for="inputPassword">Password</label>
                                                <img src="assets/img/eye-close.png" id="eyeicon">
                                            </div>

                                            <script>
                                                let eyeicon = document.getElementById("eyeicon");
                                                let password = document.getElementById("inputPassword");

                                                eyeicon.onclick = function(){
                                                    if (password.type == "password"){
                                                        password.type = "text";
                                                        eyeicon.src = "assets/img/eye-open.png";
                                                    }else {
                                                        password.type = "password";
                                                        eyeicon.src = "assets/img/eye-close.png";
                                                    }
                                                }
                                            </script>

                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                                <label class="form-check-label" for="inputRememberPassword">Remember Password</label>
                                            </div>
                                            <div class="d-flex align-items-right justify-content-between mt-4 mb-0">
                                                <!-- <input type="submit" value="LOGIN" class="btn btn-primary" name="login"> -->
                                                <button type="submit" name="login" class="btn btn-primary">LOGIN</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="register.php">Need an account? Sign up!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Name </div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
