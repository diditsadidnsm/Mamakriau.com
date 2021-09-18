<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <?php foreach (getSeo() as $seo) : ?>
    <meta content="Nashiruddien Sadid Mustaqim" name="author" />
    <meta content="<?= $seo->description ?>" name="description" />
    <meta content="<?= $seo->keyword ?>" name="keyword" />
    <title><?= $title; ?> | <?= $seo->title ?></title>
    <link rel="shortcut icon" href="<?= base_url() ?>/images/seo/<?= $seo->image ?>">

    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&display=swap" rel="stylesheet">
    <link href="<?= base_url() ?>assets/member/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/member/assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/member/assets/css/authentication/form-1.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/member/assets/css/forms/theme-checkbox-radio.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/member/assets/css/forms/switches.css">
</head>
<body class="form">
    

    <div class="form-container">
        <div class="form-form">
            <div class="form-form-wrap">
                <div class="form-container">
                    <div class="form-content">
                        <?php $this->load->view('layouts/_alert') ?>

                        <h1 class="">Sign in <a href="<?= base_url('/') ?>"><span class="brand-name"><?= $seo->title ?></span></a></h1>
                        <p class="signup-link">New Here? <a href="<?= base_url('register') ?>">Create an account</a></p>
                         <?= form_open('login', ['method' => 'POST', 'class' => 'text-left']) ?>
                            <div class="form">

                                <div id="username-field" class="field-wrapper input">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                    <?= form_input(['type' => 'email', 'name' => 'email', 'value' => $input->email, 'class' => 'form-control', 'placeholder' => 'Input your email address']) ?>
                                    <?= form_error('email') ?>
                                </div>

                                <div id="password-field" class="field-wrapper input mb-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-lock"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
                                    <?= form_password('password', '', ['class' => 'form-control', 'placeholder' => '********', 'id' => 'password']) ?>
                                    <?= form_error('password') ?>
                                </div>
                                <div class="d-sm-flex justify-content-between">
                                    <div class="field-wrapper toggle-pass">
                                        <p class="d-inline-block">Show Password</p>
                                        <label class="switch s-primary">
                                            <input type="checkbox" id="toggle-password" class="d-none">
                                            <span class="slider round"></span>
                                        </label>
                                    </div>
                                    <div class="field-wrapper">
                                        <button type="submit" class="btn btn-primary" value="">Sign in</button>
                                    </div>
                                    
                                </div>

                                <div class="field-wrapper text-center keep-logged-in">
                                    <div class="n-chk new-checkbox checkbox-outline-primary">
                                        <label class="new-control new-checkbox checkbox-outline-primary">
                                          <input type="checkbox" class="new-control-input">
                                          <span class="new-control-indicator"></span>Keep me logged in
                                        </label>
                                    </div>
                                </div>

                                <div class="field-wrapper">
                                    <a href="<?= base_url('forgot') ?>" class="forgot-pass-link">Forgot Password?</a>
                                </div>

                            </div>
                        <?= form_close() ?>                      
                        <p class="terms-conditions">© <script>document.write(new Date().getFullYear())</script>&nbsp; <?= $seo->title ?> All Rights Reserved</p>

                    </div>                    
                </div>
            </div>
        </div>
        <div class="form-image">
            <div class="l-image">
            </div>
        </div>
    </div>

    <script src="<?= base_url() ?>assets/member/assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="<?= base_url() ?>assets/member/bootstrap/js/popper.min.js"></script>
    <script src="<?= base_url() ?>assets/member/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?= base_url() ?>assets/member/assets/js/authentication/form-1.js"></script>
    
    <?php endforeach ?>

</body>
</html>