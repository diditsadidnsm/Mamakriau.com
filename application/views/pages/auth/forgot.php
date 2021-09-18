
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Recover Passowrd | Uplon - Responsive Bootstrap 4 Admin Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Responsive bootstrap 4 admin template" name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="<?= base_url() ?>assets/member/images/favicon.ico">

        <!-- App css -->
        <link href="<?= base_url() ?>assets/member/css/bootstrap-dark.min.css" rel="stylesheet" type="text/css" id="bootstrap-stylesheet" />
        <link href="<?= base_url() ?>assets/member/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="<?= base_url() ?>assets/member/css/app-dark.min.css" rel="stylesheet" type="text/css"  id="app-stylesheet" />

    </head>

    <body class="authentication-bg">

        <div class="account-pages pt-5 my-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="account-card-box">
                            <div class="card mb-0">
                                <div class="card-body p-4">
                                    
                                    <div class="text-center">
                                        <div class="my-3">
                                            <a href="index.html">
                                                <?php foreach (getLogo() as $logo) : ?>
                                                    <span><img src="<?= base_url() ?>/images/logo/<?= $logo->image ?>"" alt="<?= $logo->title ?>" height="28"></span>
                                                <?php endforeach ?>
                                            </a>
                                        </div>
                                        <div class="py-3">
                                            <h5 class="text-muted text-uppercase font-16">Reset Password</h5>
                                            <p class="text-muted">Enter your email address and we'll send you an email with instructions to reset your password.</p>
                                        </div>
                                    </div>
    
                                    <form action="#" class="mt-2">
    
                                        <div class="form-group mb-3">
                                            <input class="form-control" type="email" required="" placeholder="Enter your email">
                                        </div>
    
                                        <div class="form-group text-center mb-0">
                                            <button class="btn btn-success btn-block waves-effect waves-light" type="submit"> Send Email </button>
                                        </div>
    
                                    </form>
    
                                </div> <!-- end card-body -->
                            </div>
                            <!-- end card -->
                        </div>

                        <div class="row mt-3">
                            <div class="col-12 text-center">
                                <p class="text-white-50">Return to <a href="<?= base_url('login') ?>" class="text-white ml-1"><b>Sign In</b></a></p>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end page -->

        <!-- Vendor js -->
        <script src="<?= base_url() ?>assets/member/js/vendor.min.js"></script>

        <!-- App js -->
        <script src="<?= base_url() ?>assets/member/js/app.min.js"></script>
        
    </body>
</html>