
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>CORK Admin Template - User Account Settings</title>
    <link rel="icon" type="image/x-icon" href="<?= base_url() ?>assets/member/assets/img/favicon.ico"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&display=swap" rel="stylesheet">
    <link href="<?= base_url() ?>assets/member/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/member/assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!--  BEGIN CUSTOM STYLE FILE  -->
    <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/member/plugins/dropify/dropify.min.css">
    <link href="<?= base_url() ?>assets/member/assets/css/users/account-setting.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/member/assets/css/elements/color_library.css" rel="stylesheet" type="text/css" />
    <!--  END CUSTOM STYLE FILE  -->
</head>
<body class="sidebar-noneoverflow">
    
    <?php $this->load->view('member/material/nam_navbar') ?>
    <?php $this->load->view('member/material/nam_topbar') ?>

        <!--  BEGIN CONTENT AREA  -->
        <div id="content" class="main-content">
            <div class="layout-px-spacing">
                <div class="page-header">
                    <nav class="breadcrumb-one" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Pages</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><a href="javascript:void(0);">Account Settings</a></li>
                        </ol>
                    </nav>
                </div>                
                    
                <div class="account-settings-container layout-top-spacing">
                    <?= form_open_multipart($form_action, ['method' => 'POST', 'id' => 'general-info', 'class' => 'section general-info']) ?>

                    <div class="account-content">
                        <div class="scrollspy-example" data-spy="scroll" data-target="#account-settings-scroll" data-offset="-100">
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    
                                        <div class="info">
                                            <h6 class="">General Information</h6>
                                            <div class="row">
                                                <div class="col-lg-11 mx-auto">
                                                    <div class="row">
                                                        <div class="col-xl-2 col-lg-12 col-md-4">
                                                            <div class="upload mt-4 pr-md-4">
                                                                <?php if (isset($input->image)): ?>
                                                                <input class="dropify" data-default-file="<?= base_url("/images/user/$input->image") ?>" data-max-file-size="2M" />
                                                                <?php endif ?>
                                                                <p class="mt-2">
                                                                    <?= form_upload('image') ?>
							                                        <?php if ($this->session->flashdata('image_error')) : ?>
								                                        <small class="form-text text-danger"><?= $this->session->flashdata('image_error') ?></small>
							                                        <?php endif ?>
                                                                </p>
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-10 col-lg-12 col-md-8 mt-md-0 mt-4">
                                                            <div class="form">
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group">
                                                                            <label for="fullName">Full Name</label>
                                                                            <?= form_input('name', $input->name, ['class' => 'form-control mb-4', 'id' => 'fullName']) ?>
							                                                <?= form_error('name') ?>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group">
                                                                            <label for="username">Username</label>
                                                                            <?= form_input('username', $input->username, ['class' => 'form-control mb-4', 'id' => 'username']) ?>
							                                                <?= form_error('username') ?>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group">
                                                                            <label for="email">Email Address</label>
                                                                            <?= form_input(['type' => 'email', 'name' => 'email', 'value' => $input->email, 'class' => 'form-control mb-4', 'id' => 'email']) ?>
							                                                <?= form_error('email') ?>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="form-group">
                                                                            <label for="paypal">Paypal Account</label>
                                                                            <?= form_input(['type' => 'email', 'name' => 'paypal_account', 'value' => $input->paypal_account, 'class' => 'form-control mb-4', 'id' => 'paypal']) ?>
							                                                <?= form_error('paypal_account') ?>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    
                                        <div class="info">
                                            <h5 class="">Contact</h5>
                                            <div class="row">
                                                <div class="col-md-11 mx-auto">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="country">Country</label>
                                                                <?= form_input(['type' => 'text', 'name' => 'country', 'value' => $input->country, 'class' => 'form-control mb-4', 'id' => 'country']) ?>
							                                    <?= form_error('country') ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="home_address">Home Address</label>
                                                                <?= form_input(['type' => 'text', 'name' => 'home_address', 'value' => $input->home_address, 'class' => 'form-control mb-4', 'id' => 'home_address']) ?>
							                                    <?= form_error('home_address') ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="office_address">Office Address</label>
                                                                <?= form_input(['type' => 'text', 'name' => 'office_address', 'value' => $input->office_address, 'class' => 'form-control mb-4', 'id' => 'office_address']) ?>
							                                    <?= form_error('office_address') ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="phone_number">Phone Number</label>
                                                                <?= form_input(['type' => 'number', 'name' => 'phone_number', 'value' => $input->phone_number, 'class' => 'form-control mb-4', 'id' => 'phone_number']) ?>
							                                    <?= form_error('phone_number') ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="whatsapp_number">WhatsApp Number</label>
                                                                <?= form_input(['type' => 'number', 'name' => 'whatsapp_number', 'value' => $input->whatsapp_number, 'class' => 'form-control mb-4', 'id' => 'whatsapp_number']) ?>
							                                    <?= form_error('whatsapp_number') ?>
                                                            </div>
                                                        </div>                                    
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="website">Website</label>
                                                                <?= form_input(['type' => 'text', 'name' => 'website', 'value' => $input->website, 'class' => 'form-control mb-4', 'id' => 'website']) ?>
							                                    <?= form_error('website') ?>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                </div>
                                
                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    
                                        <div class="info">
                                            <h5 class="">Additional</h5>
                                            <div class="row">
                                                <div class="col-md-11 mx-auto">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="password">URL Facebook</label>
                                                                <?= form_input(['type' => 'text', 'name' => 'url_facebook', 'value' => $input->url_facebook, 'class' => 'form-control mb-4', 'id' => 'url_facebook']) ?>
							                                    <?= form_error('url_facebook') ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="url_linkedin">URL Linkedin</label>
                                                                <?= form_input(['type' => 'text', 'name' => 'url_linkedin', 'value' => $input->url_linkedin, 'class' => 'form-control mb-4', 'id' => 'url_linkedin']) ?>
							                                    <?= form_error('url_linkedin') ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="url_twitter">URL Twitter</label>
                                                                <?= form_input(['type' => 'text', 'name' => 'url_twitter', 'value' => $input->url_twitter, 'class' => 'form-control mb-4', 'id' => 'url_twitter']) ?>
							                                    <?= form_error('url_twitter') ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="url_instagram">URL Instagram</label>
                                                                <?= form_input(['type' => 'text', 'name' => 'url_instagram', 'value' => $input->url_instagram, 'class' => 'form-control mb-4', 'id' => 'url_instagram']) ?>
							                                    <?= form_error('url_instagram') ?>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                                
                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    
                                        <div class="info">
                                            <h5 class="">Important</h5>
                                            <div class="row">
                                                <div class="col-md-11 mx-auto">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="password">Password</label>
                                                                <?= form_password('password', '', ['class' => 'form-control mb-4', 'id' => 'password']) ?>
							                                    <?= form_error('password') ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="post_code">Post Code</label>
                                                                <?= form_input(['type' => 'number', 'name' => 'post_code', 'value' => $input->post_code, 'class' => 'form-control mb-4', 'id' => 'post_code']) ?>
							                                    <?= form_error('post_code') ?>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="account-settings-footer">
                        
                        <div class="as-footer-container">

                            <button id="multiple-reset" class="btn btn-warning">Reset All</button>
                            <div class="blockui-growl-message">
                                <i class="flaticon-double-check"></i>&nbsp; Settings Saved Successfully
                            </div>
                            <button id="multiple-messages" type="submit" class="btn btn-primary">Save Changes</button>

                        </div>

                    </div>
                    <?= form_close() ?>
                </div>

                </div>
        </div>
        <!--  END CONTENT AREA  -->

    </div>
    <!-- END MAIN CONTAINER -->

    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="<?= base_url() ?>assets/member/assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="<?= base_url() ?>assets/member/bootstrap/js/popper.min.js"></script>
    <script src="<?= base_url() ?>assets/member/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?= base_url() ?>assets/member/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="<?= base_url() ?>assets/member/assets/js/app.js"></script>
    
    <script>
        $(document).ready(function() {
            App.init();
        });
    </script>
    <script src="<?= base_url() ?>assets/member/assets/js/custom.js"></script>
    <!-- END GLOBAL MANDATORY SCRIPTS -->

    <!--  BEGIN CUSTOM SCRIPTS FILE  -->

    <script src="<?= base_url() ?>assets/member/plugins/dropify/dropify.min.js"></script>
    <script src="<?= base_url() ?>assets/member/plugins/blockui/jquery.blockUI.min.js"></script>
    <!-- <script src="plugins/tagInput/tags-input.js"></script> -->
    <script src="<?= base_url() ?>assets/member/assets/js/users/account-settings.js"></script>
    <!--  END CUSTOM SCRIPTS FILE  -->
</body>
</html>