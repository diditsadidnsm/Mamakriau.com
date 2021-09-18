
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title; ?></title>
    <link rel="stylesheet" type="text/css" href="/theme/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/theme/css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="/theme/css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="/theme/css/iofrm-theme2.css">
</head>
<body>
    <div class="form-body">
        <div class="website-logo">
            <a href="index.html">
                <div class="logo">
                    <img class="logo-size" src="/theme/images/logo-light.svg" alt="">
                </div>
            </a>
        </div>
        <div class="row">
            <div class="img-holder">
                <div class="bg"></div>
                <div class="info-holder">

                </div>
            </div>
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Get more things done with Loggin platform.</h3>
                        <p>Access to the most powerfull tool in the entire design and web industry.</p>
                        <div class="page-links">
                            <a href="login2.html" class="active">Login</a><a href="register2.html">Register</a>
                        </div>
                            <input class="form-control" type="text" id="username" placeholder="Username" required>
                            <input class="form-control" type="password" id="password" placeholder="Password" required>
                            <input type="checkbox" id="chk1"><label for="chk1">Remmeber me</label>
                            <div class="form-button">
                                <button id="submit" type="submit" class="btn btn-login ibtn">Login</button> <a href="forget2.html">Forget password?</a>
                            </div>
                        <div class="other-links">
                            <span>Or login with</span><a href="#">Facebook</a><a href="#">Google</a><a href="#">Linkedin</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src="/theme/js/jquery.min.js"></script>
<script src="/theme/js/popper.min.js"></script>
<script src="/theme/js/bootstrap.min.js"></script>
<script src="/theme/js/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/8.11.8/sweetalert2.all.min.js"></script>

    <script>
      $(document).ready(function() {

        $(".btn-login").click( function() {
        
          var username = $("#username").val();
          var password = $("#password").val();

          if(username.length == "") {

            Swal.fire({
              type: 'warning',
              title: 'Oops...',
              text: 'Username is required !'
            });

          } else if(password.length == "") {

            Swal.fire({
              type: 'warning',
              title: 'Oops...',
              text: 'Password is required !'
            });

          } else {

            $.ajax({

              url: "<?php echo base_url() ?>index.php/login/cek_login",
              type: "POST",
              data: {
                  "username": username,
                  "password": password
              },

              success:function(response){

                if (response == "success") {

                  Swal.fire({
                    type: 'success',
                    title: 'Login Success!',
                    text: 'You will be directed in 3 Seconds',
                    timer: 3000,
                    showCancelButton: false,
                    showConfirmButton: false
                  })
                  .then (function() {
                    window.location.href = "<?php echo base_url() ?>index.php/dashboard";
                  });

                } else {

                  Swal.fire({
                    type: 'error',
                    title: 'Login Failed!',
                    text: 'Please try again!'
                  });


                }

                console.log(response);

              },

              error:function(response){

                  Swal.fire({
                    type: 'error',
                    title: 'Opps!',
                    text: 'Server error!'
                  });

                  console.log(response);

              }

            });

          }

        }); 

      });
    </script>
</body>
</html>