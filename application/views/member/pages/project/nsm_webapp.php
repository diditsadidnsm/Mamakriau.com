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
    <link rel="stylesheet" type="text/css" href="assets/css/forms/theme-checkbox-radio.css">
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
                    
                    <?= form_open_multipart($form_action, ['method' => 'POST']) ?>
                     <input type="hidden" name="id_user" value="<?= $this->session->userdata('id') ?>">
                     <input type="hidden" name="url" value="<?= random_string('alnum',200) ?>">
                     <input type="hidden" name="no_invoice" value="<?= random_string('numeric',5) ?>">
                     <input type="hidden" name="invoice_date" value="<?= date('Y-m-d') ?>">
                     <input type="hidden" name="id_service" value="3">
                     <input type="hidden" name="price" value="1,373.75">
                     <input type="hidden" name="discount" value="0.20">

                    <div class="account-content">
                        <div class="scrollspy-example" data-spy="scroll" data-target="#account-settings-scroll" data-offset="-100">
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    <div id="general-info" class="section general-info">
                                        <div class="info">
                                            <h6 class="">Upload Sketch or Designs Website or App Example do you like</h6>
                                            <div class="row">
                                                <div class="col-lg-11 mx-auto">
                                                    <div class="row">
                                                        <div class="col-xl-3 col-lg-12 col-md-4">
                                                            <div class="upload mt-4 pr-md-4">
                                                                <input type="file" id="input-file-max-fs" class="dropify" data-default-file="<?= base_url() ?>assets/member/assets/img/200x200.jpg" data-max-file-size="2M" />
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-3 col-lg-12 col-md-4">
                                                            <div class="upload mt-4 pr-md-4">
                                                                <input type="file" id="input-file-max-fs" class="dropify" data-default-file="<?= base_url() ?>assets/member/assets/img/200x200.jpg" data-max-file-size="2M" />
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-3 col-lg-12 col-md-4">
                                                            <div class="upload mt-4 pr-md-4">
                                                                <input type="file" id="input-file-max-fs" class="dropify" data-default-file="<?= base_url() ?>assets/member/assets/img/200x200.jpg" data-max-file-size="2M" />
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-3 col-lg-12 col-md-4">
                                                            <div class="upload mt-4 pr-md-4">
                                                                <input type="file" id="input-file-max-fs" class="dropify" data-default-file="<?= base_url() ?>assets/member/assets/img/200x200.jpg" data-max-file-size="2M" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    <div id="general-info" class="section general-info">
                                        <div class="info">
                                            <h6 class="">General Information</h6>
                                            <div class="row">
                                                <div class="col-lg-11 mx-auto">
                                                    <div class="row">
                                                        <div class="col-xl-12 col-lg-12 col-md-8 mt-md-0 mt-4">
                                                            <div class="form">
                                                                <div class="form-group">
                                                                    <label for="project_name">What Project Name do you want?<span style="color: red;">*</span></label>
                                                                    <input type="text" class="form-control mb-4" id="project_name" name="project_name" placeholder="I Need Great Logo for My Business Consulting">
                                                                    <?= form_error('project_name') ?>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="fullName">Name Incorporate in the brand<span style="color: red;">*</span></label>
                                                                    <input type="text" class="form-control mb-4" id="fullName" name="name_corporate">
                                                                    <?= form_error('name_corporate') ?>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="profession">Slogan Incorporate in the brand</label>
                                                                    <input type="text" class="form-control mb-4" id="profession" name="slogan_corporate">
                                                                    <?= form_error('slogan_corporate') ?>
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
                                    <div id="skill" class="section skill">
                                        <div class="info">
                                            <h5 class="">Your Website or App Style</h5>
                                            <div class="row progress-bar-section">

                                                <div class="col-md-11 mx-auto">
                                                    <div class="custom-progress top-right progress-up" style="width: 100%">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: left;">Classic</p>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: right;">Modern</p>
                                                            </div>
                                                        </div>
                                                        <input type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_classic_modern" value="25">
                                                        <!--<div class="range-count"><span class="range-count-number" data-rangecountnumber="25">25</span> <span class="range-count-unit">%</span></div>-->
                                                    </div>
                                                </div>
                                                <br /><br /><br /><br /><br />
                                                <div class="col-md-11 mx-auto">
                                                    <div class="custom-progress top-right progress-up" style="width: 100%">
                                                         <div class="row">
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: left;">Minimal</p>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: right;">Complex</p>
                                                            </div>
                                                        </div>
                                                        <input type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_minimal_complex" value="50">
                                                        <!--<div class="range-count"><span class="range-count-number" data-rangecountnumber="50">50</span> <span class="range-count-unit">%</span></div>-->
                                                    </div>
                                                </div>
                                                <br /><br /><br /><br /><br />
                                                <div class="col-md-11 mx-auto">
                                                    <div class="custom-progress top-right progress-up" style="width: 100%">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: left;">Feminine</p>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: right;">Masculine</p>
                                                            </div>
                                                        </div>
                                                        <input type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_feminine_masculine" value="70">
                                                        <!--<div class="range-count"><span class="range-count-number" data-rangecountnumber="70">70</span> <span class="range-count-unit">%</span></div>-->
                                                    </div>
                                                </div>
                                                <br /><br /><br /><br /><br />
                                                <div class="col-md-11 mx-auto">
                                                    <div class="custom-progress top-right progress-up" style="width: 100%">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: left;">Playful</p>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: right;">Sophisticated</p>
                                                            </div>
                                                        </div>
                                                        <input type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_playful_sophisticated" value="60">
                                                        <!--<div class="range-count"><span class="range-count-number" data-rangecountnumber="60">60</span> <span class="range-count-unit">%</span></div>-->
                                                    </div>
                                                </div>
                                                <br /><br /><br /><br /><br />
                                                <div class="col-md-11 mx-auto">
                                                    <div class="custom-progress top-right progress-up" style="width: 100%">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: left;">Youthful</p>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: right;">Mature</p>
                                                            </div>
                                                        </div>
                                                        <input type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_youthful_mature" value="60">
                                                        <!--<div class="range-count"><span class="range-count-number" data-rangecountnumber="60">60</span> <span class="range-count-unit">%</span></div>-->
                                                    </div>
                                                </div>
                                                <br /><br /><br /><br /><br />
                                                <div class="col-md-11 mx-auto">
                                                    <div class="custom-progress top-right progress-up" style="width: 100%">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: left;">Echonomical</p>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: right;">Luxurious</p>
                                                            </div>
                                                        </div>
                                                        <input type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_echonomical_luxurious" value="60">
                                                        <!--<div class="range-count"><span class="range-count-number" data-rangecountnumber="60">60</span> <span class="range-count-unit">%</span></div>-->
                                                    </div>
                                                </div>
                                                <br /><br /><br /><br /><br />
                                                <div class="col-md-11 mx-auto">
                                                    <div class="custom-progress top-right progress-up" style="width: 100%">
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: left;">Abstract</p>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <p class="skill-name" style="text-align: right;">Literal</p>
                                                            </div>
                                                        </div>
                                                        <input type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_abstract_literal" value="60">
                                                        <!--<div class="range-count"><span class="range-count-number" data-rangecountnumber="60">60</span> <span class="range-count-unit">%</span></div>-->
                                                    </div>
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    <div id="about" class="section about">
                                        <div class="info">
                                            <h5 class="">Base Colors</h5>
                                            <div class="row">
                                                <div class="col-lg-11 mx-auto">
                                                    <div class="row">
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            <input class="form-check-input" type="checkbox" name="style_colors">
                                                            <div class="color-box">
                                                                <span class="cl-example" style="background-color: #4361ee;"></span>
                                                                <div class="cl-info">
                                                                    <h5 class="cl-title">Blue</h5>
                                                                    <span>#4361ee</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            <input class="form-check-input" type="checkbox" name="style_colors">
                                                            <div class="color-box">
                                                                <span class="cl-example" style="background-color: #2196f3;"></span>
                                                                <div class="cl-info">
                                                                    <h5 class="cl-title">Aqua</h5>
                                                                    <span>#2196f3</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            <input class="form-check-input" type="checkbox" name="style_colors">
                                                            <div class="color-box">
                                                                <span class="cl-example" style="background-color: #1abc9c;"></span>
                                                                <div class="cl-info">
                                                                    <h5 class="cl-title">Green</h5>
                                                                    <span>#1abc9c</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            <input class="form-check-input" type="checkbox" name="style_colors">
                                                            <div class="color-box">
                                                                <span class="cl-example" style="background-color: #e2a03f;"></span>
                                                                <div class="cl-info">
                                                                    <h5 class="cl-title">Yellow</h5>
                                                                    <span>#e2a03f</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            <input class="form-check-input" type="checkbox" name="style_colors">
                                                            <div class="color-box">
                                                                <span class="cl-example" style="background-color: #e7515a;"></span>
                                                                <div class="cl-info">
                                                                    <h5 class="cl-title">Red</h5>
                                                                    <span>#e7515a</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            <input class="form-check-input" type="checkbox" name="style_colors">
                                                            <div class="color-box">
                                                                <span class="cl-example" style="background-color: #805dca;"></span>
                                                                <div class="cl-info">
                                                                    <h5 class="cl-title">Purple</h5>
                                                                    <span>#805dca</span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            <input class="form-check-input" type="checkbox" name="style_colors">
                                                            <div class="color-box">
                                                                <span class="cl-example" style="background-color: #3b3f5c;"></span>
                                                                <div class="cl-info">
                                                                    <h5 class="cl-title">Dark</h5>
                                                                    <span>#3b3f5c</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            <input class="form-check-input" type="checkbox" name="style_colors">
                                                            <div class="color-box">
                                                                <span class="cl-example" style="background-color: #e3e4eb;"></span>
                                                                <div class="cl-info">
                                                                    <h5 class="cl-title">Dark Light</h5>
                                                                    <span>#3b3f5c</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            <div class="form">
                                                                <div class="form-group">
                                                                    <label for="profession">Specific Colors</label>
                                                                    <input type="text" class="form-control mb-4" id="profession" name="style_colors" placeholder="#0f0f0f;">
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
                                    <div id="work-platforms" class="section work-platforms">
                                        <div class="info">
                                            <h5 class="">Background Information</h5>
                                            <div class="row">
                                                <div class="col-md-11 mx-auto">

                                                    <div class="platform-div">
                                                        <div class="form-group">
                                                            <label for="platform-title">Select Your Industry</label>
                                                            <select class="form-control mb-4" id="platform-title" name="id_industry">
                                                                    <option selected>All Industry</option>
                                                                    <?php foreach(getIndustry() AS $industry) : ?>
                                                                    <option value="<?= $industry->id ?>"><?= $industry->title ?></option>
                                                                    <?php endforeach ?>
                                                                </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="platform-description">Describe what your organization or product does and its target audience</label>
                                                            <textarea class="form-control mb-4" id="platform-description" name="description_target_audience" rows="10"></textarea>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    <div id="contact" class="section contact">
                                        <div class="info">
                                            <h5 class="">Contact</h5>
                                            <div class="row">
                                                <div class="col-md-11 mx-auto">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="country">Country</label>
                                                                <select class="form-control" id="country" name="id_country">
                                                                    <option selected>All Countries</option>
                                                                    <?php foreach(getCountry() AS $country) : ?>
                                                                    <option value="<?= $country->id ?>"><?= $country->title ?></option>
                                                                    <?php endforeach ?>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="address">Home Address</label>
                                                                <input type="text" class="form-control mb-4" id="address" name="home_address" placeholder="Address" value="New York" >
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="location">Company Address</label>
                                                                <input type="text" class="form-control mb-4" id="location" name="company_address" placeholder="Location">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="phone">Phone</label>
                                                                <input type="text" class="form-control mb-4" id="phone" name="phone_number" placeholder="Write your phone number here" value="+1 (530) 555-12121">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="email">Email</label>
                                                                <input type="text" class="form-control mb-4" id="email" name="email" placeholder="Write your email here" value="<?= $this->session->userdata('email') ?>" readonly="true">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="email">Sure Name</label>
                                                                <input type="text" class="form-control mb-4" id="email" name="sure_name" placeholder="Write your email here" value="<?= $this->session->userdata('name') ?>" readonly="true">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="website1">Username</label>
                                                                <input type="text" class="form-control mb-4" id="website1" name="username" value="<?= $this->session->userdata('username') ?>" readonly="true">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="website1">Website</label>
                                                                <input type="text" class="form-control mb-4" id="website1" name="website" placeholder="Write your website here">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    <div id="edu-experience" class="section edu-experience">
                                        <div class="info">
                                            <h5 class="">Duration</h5>
                                            <div class="row">
                                                <div class="col-md-11 mx-auto">

                                                    <div class="edu-section">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label>Starting From</label>

                                                                            <div class="row">

                                                                                <div class="col-md-12">
                                                                                    <input type="date" class="form-control" name="duration_start">
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label>Ending In</label>

                                                                            <div class="row">

                                                                                <div class="col-md-12 mb-4">
                                                                                    <input type="date" class="form-control" name="duration_end">
                                                                                </div>

                                                                                <div class="col-md-6">
                                                                                    
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
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    <div id="about" class="section about">
                                        <div class="info">
                                            <h5 class="">What do you want?</h5>
                                            
                                            <p>Website</p>
                                            <div class="row">
                                                <div class="col-lg-11 mx-auto">
                                                    <div class="row">
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="Web Ecommerce"> E-commerce &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="Web Company Profile"> Company Profile &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="Web Blogs"> Blogs &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="Web ERP"> Enterprise Resource Planning &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="Web MLM"> Multi Level Marketing &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                             
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="Web Cryptocurrency"> Cryptocurrency &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                             
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="Build Library"> Library &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                             
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="Web Games"> Games &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                             
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="Build Plugin"> Plugin &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <p>App</p>
                                            <div class="row">
                                                <div class="col-lg-11 mx-auto">
                                                    <div class="row">
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="App Ecommerce"> E-commerce &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="App Blogs"> Blogs &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="App ERP"> Enterprise Resource Planning &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                            
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="App MLM"> Multi Level Marketing &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>

                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                             
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="Web Cryptocurrency"> Cryptocurrency &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                             
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="App Games"> Games &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                             
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="App Music Portal"> Music Portal &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                             
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="App Videos Portal"> Videos Portal &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>
                                                        
                                                        <div class="col-xl-4 col-lg-6 col-md-4 col-sm-6 col layout-spacing">
                                                             
                                                            <h5>
                                                            <input class="form-check-input" type="radio" name="web_type" value="App Files Portal"> Films Portal &nbsp; 
                                                            <a type="button" data-toggle="modal" data-target="#exampleModal">
                                                               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle"><circle cx="12" cy="12" r="10"></circle><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                                                            </a>
                                                            </h5>
                                                            
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    <div id="work-experience" class="section work-experience">
                                        <div class="info">
                                            <h5 class="">Hosting &amp; Domain</h5>
                                            <div class="row">
                                                <div class="col-md-11 mx-auto">

                                                    <div class="work-section">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                <label for="country">Hosting</label>
                                                                <select class="form-control" id="year" name="storage">
                                                                    <option selected>Select Hosting</option>
                                                                    <option value="I Have Hosting">I Have Hosting</option>
                                                                    <option value="Hosting">Hosting</option>
                                                                    <option value="VPS">VPS</option>
                                                                    <option value="Dedicated">Dedicated</option>
                                                                </select>
                                                                </div>
                                                            
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <table class="table table-bordered mb-4">
                                                                    <tbody>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="Hosting / Silver / Mounth">&nbsp; SILVER - ( Memory: 512 MB, Processing: 1 vCPU, Storage: 4 GB SSD, Transfer: 1 TB ) - $0.50/Mounth
                                                                            </td>
                                                                            <td hidden>
                                                                                Hosting
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="Hosting / Gold / Mounth">&nbsp; GOLD - ( Memory: 1 GB, Processing: 1 vCPU, Storage: 4 GB SSD, Transfer: 2 TB ) - $0.85/Mounth
                                                                            </td>
                                                                            <td hidden>
                                                                                Hosting
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="Hosting / Platinum / Mounth">&nbsp; PLATINUM - ( Memory: 2 GB, Processing: 1 vCPU, Storage: 10 GB SSD, Transfer: 3 TB ) - $1.50/Mounth
                                                                            </td>
                                                                            <td hidden>
                                                                                Hosting
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="Hosting / Silver / Yearly">&nbsp; SILVER - ( Memory: 512 MB, Processing: 1 vCPU, Storage: 4 GB SSD, Transfer: 1 TB ) - $5.80/Yearly
                                                                            </td>
                                                                            <td hidden>
                                                                                Hosting
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="Hosting / Gold / Yearly">&nbsp; GOLD - ( Memory: 1 GB, Processing: 1 vCPU, Storage: 4 GB SSD, Transfer: 2 TB ) - $9.86/Yearly
                                                                            </td>
                                                                            <td hidden>
                                                                                Hosting
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="Hosting / Platinum / Yearly">&nbsp; PLATINUM - ( Memory: 2 GB, Processing: 1 vCPU, Storage: 10 GB SSD, Transfer: 3 TB ) - $17.40/Yearly
                                                                            </td>
                                                                            <td hidden>
                                                                                Hosting
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="VPS / Silver / Mounth">&nbsp; SILVER - ( Memory: 512 GB, Processing: 1 vCPU, Storage: 20 GB SSD, Transfer: 1 TB ) - $5.00/Mounth
                                                                            </td>
                                                                            <td hidden>
                                                                                VPS
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="VPS / Gold / Mounth">&nbsp; GOLD - ( Memory: 1 GB, Processing: 1 vCPU, Storage: 40 GB SSD, Transfer: 2 TB ) - $10.00/Mounth
                                                                            </td>
                                                                            <td hidden>
                                                                                VPS
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="VPS / Platinum / Mounth">&nbsp; PLATINUM - ( Memory: 4 GB, Processing: 2 vCPU, Storage: 80 GB SSD, Transfer: 4 TB ) - $25.00/Mounth
                                                                            </td>
                                                                            <td hidden>
                                                                                VPS
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="VPS / Silver / Yearly">&nbsp; SILVER - ( Memory: 512 GB, Processing: 1 vCPU, Storage: 20 GB SSD, Transfer: 1 TB ) - $58.00/Yearly
                                                                            </td>
                                                                            <td hidden>
                                                                                VPS
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="VPS / Gold / Yearly">&nbsp; GOLD - ( Memory: 1 GB, Processing: 1 vCPU, Storage: 40 GB SSD, Transfer: 2 TB ) - $116.00/Yearly
                                                                            </td>
                                                                            <td hidden>
                                                                                VPS
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="checkbox" name="all_you_need" value="VPS / Platinum / Yearly">&nbsp; PLATINUM - ( Memory: 4 GB, Processing: 2 vCPU, Storage: 80 GB SSD, Transfer: 4 TB ) - $290.00/Yearly
                                                                            </td>
                                                                            <td hidden>
                                                                                VPS
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                 <input type="checkbox" name="all_you_need" value="Dedicated / Silver / Mounth">&nbsp; SILVER - ( Memory: 8 GB, Processing: 2 vCPU, Storage: 160 GB SSD, Transfer: 5 TB ) - $50.00/Mounth
                                                                            </td>
                                                                            <td hidden>
                                                                                Dedicated
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                 <input type="checkbox" name="all_you_need" value="Dedicated / Gold / Mounth">&nbsp; GOLD - ( Memory: 12 GB, Processing: 4 vCPU, Storage: 360 GB SSD, Transfer: 6 TB ) - $100.00/Mounth
                                                                            </td>
                                                                            <td hidden>
                                                                                Dedicated
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                 <input type="checkbox" name="all_you_need" value="Dedicated / Platinum / Mounth">&nbsp; PLATINUM - ( Memory: 32 GB, Processing: 8 vCPU, Storage: 640 GB SSD, Transfer: 7 TB ) - $165.00/Mounth
                                                                            </td>
                                                                            <td hidden>
                                                                                Dedicated
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                 <input type="checkbox" name="all_you_need" value="Dedicated / Silver / Yearly">&nbsp; SILVER - ( Memory: 8 GB, Processing: 2 vCPU, Storage: 160 GB SSD, Transfer: 5 TB ) - $580.00/Yearly
                                                                            </td>
                                                                            <td hidden>
                                                                                Dedicated
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                 <input type="checkbox" name="all_you_need" value="Dedicated / Gold / Yearly">&nbsp; GOLD - ( Memory: 12 GB, Processing: 4 vCPU, Storage: 360 GB SSD, Transfer: 6 TB ) - $1,160.00/Yearly
                                                                            </td>
                                                                            <td hidden>
                                                                                Dedicated
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                 <input type="checkbox" name="all_you_need" value="Dedicated / Platinum / Yearly">&nbsp; PLATINUM - ( Memory: 32 GB, Processing: 8 vCPU, Storage: 640 GB SSD, Transfer: 7 TB ) - $1,914.00/Yearly
                                                                            </td>
                                                                            <td hidden>
                                                                                Dedicated
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td> 
                                                                                <input type="text" class="form-control md-4" id="hosting" name="all_you_need" placeholder="Write your IP Public or DNS Name"> 
                                                                            </td>
                                                                            <td hidden>
                                                                                I Have Hosting
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                    <div id="work-experience" class="section work-experience">
                                        <div class="info">
                                            <h5 class="">Other Notes</h5>
                                            <div class="row">
                                                <div class="col-md-11 mx-auto">

                                                    <div class="work-section">
                                                        <div class="row">
                                        
                                                            <div class="col-md-12">
                                                                <textarea class="form-control" name="other_notes" rows="10"></textarea>
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
                    </div>

                    <div class="account-settings-footer">
                        
                        <div class="as-footer-container">

                            <button id="multiple-reset" class="btn btn-warning">Reset All</button>
                            <div class="blockui-growl-message">
                                <i class="flaticon-double-check"></i>&nbsp; Order Saved Successfully
                            </div>
                            <button type="submit" id="multiple-messages" class="btn btn-primary">Order Project</button>

                        </div>

                    </div>
                </div>
                <?= form_close() ?>
                </div>
        </div>
        <!--  END CONTENT AREA  -->

    </div>
    <!-- END MAIN CONTAINER -->
    
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">What is a Brand Guide?</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            ...
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

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
    
    <script type="text/javascript">
        $(document).ready(function(){
          $("#year").on('click', function(){
            var yr = $(this).val();
            $("table tr").each(function(index){
              var val = $(":nth-child(2)", this).html();
              if(yr === 'All') {
                $(this).show();
              } else if(val == yr) {
                $(this).show();
              } else {
                $(this).hide();
              }
            });
  }        )
        ;

          $("#year").trigger('click');
        });
    </script>

    <!--  BEGIN CUSTOM SCRIPTS FILE  -->

    <script src="<?= base_url() ?>assets/member/plugins/dropify/dropify.min.js"></script>
    <script src="<?= base_url() ?>assets/member/plugins/blockui/jquery.blockUI.min.js"></script>
    <!-- <script src="plugins/tagInput/tags-input.js"></script> -->
    <script src="<?= base_url() ?>assets/member/assets/js/users/account-settings.js"></script>
    <script src="<?= base_url() ?>assets/member/plugins/highlight/highlight.pack.js"></script>
    <!--  END CUSTOM SCRIPTS FILE  -->
</body>
</html>