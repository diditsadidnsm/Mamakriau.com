
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>CORK Admin Template - FAQ Landing Page</title>
    <link rel="icon" type="image/x-icon" href="<?= base_url() ?>assets/member/assets/img/favicon.ico"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&display=swap" rel="stylesheet">
    <link href="<?= base_url() ?>assets/member/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/member/assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM STYLES -->
    <link href="<?= base_url() ?>assets/member/assets/css/pages/faq/faq.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/member/assets/css/elements/color_library.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS/CUSTOM STYLES -->     
</head>
<body class="sidebar-noneoverflow">

    <?php $this->load->view('member/material/nam_navbar') ?>
    <?php $this->load->view('member/material/nam_topbar') ?>

        <?php foreach ($brief as $detail) : ?>
        <div id="content" class="main-content">
            <div class="layout-px-spacing">
                <div class="page-header">
                    <nav class="breadcrumb-one" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Pages</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><a href="javascript:void(0);">FAQ</a></li>
                        </ol>
                    </nav>
                </div>
    

                <div class="fq-header-wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 align-self-center order-md-0 order-1">
                                <h1 class=""><?= $detail->project_name ?></h1>
                                <p class=""><?= $detail->username ?></p>
                                <button class="btn btn-dark">On Progress</button>
                            </div>
                            <div class="col-md-6 order-md-0 order-0">
                                <div class="banner-img">
                                    <img src="<?= base_url() ?>images/brief/brief.svg" class="d-block" alt="header-image">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="faq container">

                    <div class="faq-layouting layout-spacing">


                        <div class="fq-comman-question-wrapper">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3>General Information</h3>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <ul class="">
                                                
                                                <li class="list-unstyled">
                                                    <div class="icon-svg">
                                                        Name incorporate to logo / brand:
                                                    </div>
                                                    <br /><br />
                                                    <p><?= $detail->name_corporate ?></p>
                                                </li>
                                                <li class="list-unstyled">
                                                    <div class="icon-svg">
                                                        Slogan incorporate to logo / brand:
                                                    </div>
                                                    <br /><br />
                                                    <p><?= $detail->slogan_corporate ?></p>
                                                </li>
                                                <li class="list-unstyled">
                                                    <div class="icon-svg">
                                                        Description of the organization and it's target audience:
                                                    </div>
                                                    <br /><br />
                                                    <p><?= $detail->description_target_audience ?></p>
                                                </li>
                                                <li class="list-unstyled">
                                                    <div class="icon-svg">
                                                        Industry:
                                                    </div>
                                                    <br /><br />
                                                    <p><?= $detail->industry_title ?></p>
                                                </li>
                                                
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="fq-article-section">
                            <h2>Visual Style</h2>
                            <p class="">Colors to explore</p>
                            <div class="row">
                                
                                <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
                                    <div class="card">
                                        <div class="color-box">
                                            <span class="cl-example" style="background-color: #4361ee;"></span>
                                            <div class="cl-info">
                                                <h5 class="cl-title">Blue</h5>
                                                <span>#4361ee</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
                                    <div class="card">
                                        <div class="color-box">
                                        <span class="cl-example" style="background-color: #805dca;"></span>
                                            <div class="cl-info">
                                                <h5 class="cl-title">Purple</h5>
                                                <span>#805dca</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
                                    <div class="card">
                                        <div class="color-box">
                                        <span class="cl-example" style="background-color: #e3e4eb;"></span>
                                            <div class="cl-info">
                                                <h5 class="cl-title">Dark Light</h5>
                                                <span>#3b3f5c</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
                                    <div class="card">
                                        <div class="color-box">
                                            <div class="cl-info">
                                                <h5 class="cl-title"><?= $detail->style_colors ?></h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                            <br /><br /><br />
                            <p class="">Style and Adjectives</p>
                            <div class="row">
                                
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
                                            <input id="fieldset1" type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_classic_modern" value="<?= $detail->style_classic_modern ?>" disabled readonly="1" />
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
                                            <input id="fieldset1" type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_minimal_complex" value="<?= $detail->style_minimal_complex ?>" disabled readonly="1" />
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
                                            <input id="fieldset1" type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_feminine_masculine" value="<?= $detail->style_feminine_masculine ?>" disabled readonly="1" />
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
                                            <input id="fieldset1" type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_playful_sophisticated" value="<?= $detail->style_playful_sophisticated ?>" disabled readonly="1" />
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
                                            <input id="fieldset1" type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_youthful_mature" value="<?= $detail->style_youthful_mature ?>" disabled readonly="1" />
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
                                            <input id="fieldset1" type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_echonomical_luxurious" value="<?= $detail->style_echonomical_luxurious ?>" disabled readonly="1" />
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
                                            <input id="fieldset1" type="range" min="0" max="100" class="custom-range progress-range-counter" name="style_abstract_literal" value="<?= $detail->style_abstract_literal ?>" disabled readonly="1" />
                                            <!--<div class="range-count"><span class="range-count-number" data-rangecountnumber="60">60</span> <span class="range-count-unit">%</span></div>-->
                                        </div>
                                    </div>
                                                
                                </div>
                                
                            </div>

                        </div>
                        
                        <div class="fq-article-section">
                            <h2>Design Inspiration</h2>
                            <div class="row">
                                <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
                                    <div class="card">
                                        <img src="<?= base_url() ?>assets/member/assets/img/400x300.jpg" class="card-img-top" alt="faq-video-tutorials">
                                        <div class="card-body">
                                            <p class="card-text">Some quick example text to build on the card title.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 mb-lg-0 mb-4">
                                    <div class="card">
                                        <img src="<?= base_url() ?>assets/member/assets/img/400x300.jpg" class="card-img-top" alt="faq-video-tutorials">
                                        <div class="card-body">
                                            <p class="card-text">Some quick example text to build on the card title.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 mb-md-0 mb-4">
                                    <div class="card">
                                        <img src="<?= base_url() ?>assets/member/assets/img/400x300.jpg" class="card-img-top" alt="faq-video-tutorials">
                                        <div class="card-body">
                                            <p class="card-text">Some quick example text to build on the card title.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="card">
                                        <img src="<?= base_url() ?>assets/member/assets/img/400x300.jpg" class="card-img-top" alt="faq-video-tutorials">
                                        <div class="card-body">
                                            <p class="card-text">Some quick example text to build on the card title.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        
                        <div class="fq-tab-section">
                            <div class="row">
                                <div class="col-md-12 mb-5 mt-5">

                                    <h2>Other Notes</h2>

                                    <div class="accordion" id="accordionExample">

                                        <div class="card">
                                            <div id="fqcollapseTwo" class="collapse show" aria-labelledby="fqheadingTwo" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <p><?= $detail->other_notes ?></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>                            
                        </div>
                        
                        <div class="fq-tab-section">
                            <div class="row">
                                <div class="col-md-12 mb-5 mt-5">

                                    <h2>Files Deliverables</h2>

                                    <div class="accordion" id="accordionExample">
                                        
                                        <?php if($detail->id_service == 1) : ?>
                                        
                                        <div class="card">
                                            <div class="card-header" id="fqheadingOne">
                                                <div class="mb-0" data-toggle="collapse" role="navigation" data-target="#fqcollapseOne" aria-expanded="true" aria-controls="fqcollapseOne">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-code"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg> <span class="faq-q-title">Logo</span> 
                                                </div>
                                            </div>
                                            <div id="fqcollapseOne" class="collapse show" aria-labelledby="fqheadingOne" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <p> 
                                                    - One logo design will be delivered in size (1000x1000 px)<br />
                                                    - All fonts will be outlined as vector images<br />
                                                    - Image quality :<br />
                                                      + JPG, PNG all set in maximum quality<br />
                                                      + PDF<br />
                                                      + EPS : RGB (Digital) and CMYK (Print) versions.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <?php else : ?>
                                        
                                        <div class="card">
                                            <div class="card-header" id="fqheadingOne">
                                                <div class="mb-0" data-toggle="collapse" role="navigation" data-target="#fqcollapseOne" aria-expanded="true" aria-controls="fqcollapseOne">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-code"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg> <span class="faq-q-title">Logo</span> 
                                                </div>
                                            </div>
                                            <div id="fqcollapseOne" class="collapse show" aria-labelledby="fqheadingOne" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <p> 
                                                    - One logo design will be delivered in size (1000x1000 px)<br />
                                                    - All fonts will be outlined as vector images<br />
                                                    - Image quality :<br />
                                                      + JPG, PNG all set in maximum quality<br />
                                                      + PDF<br />
                                                      + EPS : RGB (Digital) and CMYK (Print) versions.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card">
                                            <div class="card-header" id="fqheadingTwo">
                                                <div class="mb-0" data-toggle="collapse" role="navigation" data-target="#fqcollapseTwo" aria-expanded="false" aria-controls="fqcollapseTwo">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-code"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg> <span class="faq-q-title">Business Card</span> 
                                                </div>
                                            </div>
                                            <div id="fqcollapseTwo" class="collapse" aria-labelledby="fqheadingTwo" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <p>
                                                        Business card (EU standard size)<br />
                                                        - Safe area in 79mm x 49mm<br />
                                                          All the important parts (text, logo, icon etc.) <br />
                                                        - Trim area in 85mm x 55mm<br />
                                                          This is where the artwork will be trimmed<br />
                                                        - Bleed area in 91mm x 61mm<br />
                                                          Background extends to the edge of trim line, extend to the outer edge of the bleed area so you don't have white edges when it trimmed.<br /><br />

                                                        Business card (US standard size)<br />
                                                        - Safe area in 3.25" x 1.75"<br />
                                                          All the important parts (text, logo, icon etc.)<br />
                                                        - Trim area in 3.5" x 2.0"<br />
                                                          This is where the artwork will be trimmed<br />
                                                        - Bleed area in 3.75" x 2.25"<br />
                                                          Background extends to the edge of trim line, extend to the outer edge of the bleed area so you don't have white edges when it trimmed.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card">
                                            <div class="card-header" id="fqheadingThree">
                                                <div class="mb-0" data-toggle="collapse" role="navigation" data-target="#fqcollapseThree" aria-expanded="false" aria-controls="fqcollapseThree">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-code"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg> <span class="faq-q-title">LetterHead</span> 
                                                </div>
                                            </div>
                                            <div id="fqcollapseThree" class="collapse" aria-labelledby="fqheadingThree" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <p>
                                                        Letterhead A4 (210mm x 297mm)<br />
                                                        - Safe area in 197.3mm x 284.3mm<br />
                                                          All the important parts (text, logo, icon etc.)<br />
                                                        - Trim area in 210mm x 297mm<br />
                                                          This is where the artwork will be trimmed<br />
                                                        - Bleed area in 222.7mm x 309.7mm<br />
                                                          if there is a background extends to the edge of trim line, extend to the outer edge of the bleed area so you don't have white edges when it trimmed.<br /><br />

                                                        Letterhead (8.5" x 11")<br />
                                                        - Safe area in 8" x 10.5"<br />
                                                          All the important parts (text, logo, icon etc.)<br />
                                                        - Trim area in 8.5" x 11"<br />
                                                          This is where the artwork will be trimmed<br />
                                                        - Bleed area in 9" x 11.5"<br />
                                                          Background extends to the edge of trim line, extend to the outer edge of the bleed area so you don't have white edges when it trimmed.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card">
                                            <div class="card-header" id="fqheadingFour">
                                                <div class="mb-0" data-toggle="collapse" role="navigation" data-target="#fqcollapseFour" aria-expanded="false" aria-controls="fqcollapseFour">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-code"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg> <span class="faq-q-title">Envelope</span> 
                                                </div>
                                            </div>
                                            <div id="fqcollapseFour" class="collapse" aria-labelledby="fqheadingFour" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <p>
                                                        Non-US Envelope (221mm x 110mm)<br />
                                                        - Safe area in 208.3mm x 97.3mm<br />
                                                          All the important parts (text, logo, icon etc.)<br />
                                                        - Trim area in 221mm x 110mm<br />
                                                          This is where the artwork will be trimmed<br />
                                                        - Bleed area in 223.7mm x 122.7mm<br />
                                                          if there is a background extends to the edge of trim line, extend to the outer edge of the bleed area so you don't have white edges when it trimmed.<br /><br />

                                                        Envelope (9.5" x 4.125")<br />
                                                        - Safe area in 8" x 10.5"<br />
                                                          All the important parts (text, logo, icon etc.)<br />
                                                        - Trim area in 9.34" x 3.97"<br />
                                                          This is where the artwork will be trimmed<br />
                                                        - Bleed area in 9.5" x 4.125"<br />
                                                          Background extends to the edge of trim line, extend to the outer edge of the bleed area so you don't have white edges when it trimmed.<br /><br />

                                                        US Envelope (8.875" x 3.875")<br />
                                                        - Safe area in 8.375" x 3.375"<br />
                                                          All the important parts (text, logo, icon etc.)<br />
                                                        - Trim area in 8.875" x 3.875"<br />
                                                          This is where the artwork will be trimmed<br />
                                                        - Bleed area in 9.375" x 4.375"<br />
                                                          Background extends to the edge of trim line, extend to the outer edge of the bleed area so you don't have white edges when it trimmed.<br /><br />
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="card">
                                            <div class="card-header" id="fqheadingFive">
                                                <div class="mb-0" data-toggle="collapse" role="navigation" data-target="#fqcollapseFive" aria-expanded="false" aria-controls="fqcollapseFive">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-code"><polyline points="16 18 22 12 16 6"></polyline><polyline points="8 6 2 12 8 18"></polyline></svg> <span class="faq-q-title">Social Media</span> 
                                                </div>
                                            </div>
                                            <div id="fqcollapseFive" class="collapse" aria-labelledby="fqheadingFive" data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <p>Facebook cover (social media) deliverables in PSD file with 820 x 312px</p>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <?php endif ?>
                                    </div>

                                </div>
                            </div>                            
                        </div>

                        <div class="fq-article-section">
                            <h2>Final Files</h2>
                            <p class="">Source Files</p>
                            <div class="row">
                                <div class="col-lg-1 col-md-6 mb-lg-0 mb-4">
                                    <img src="<?= base_url() ?>images/brief/Ai.png" style="width: 80px" class="card-img-top" alt="faq-video-tutorials">
                                </div>
                                <div class="col-lg-1 col-md-6 mb-lg-0 mb-4">
                                    <img src="<?= base_url() ?>images/brief/eps.png" style="width: 80px" class="card-img-top" alt="faq-video-tutorials">
                                </div>
                            </div>
                            <br /><br />
                            <p class="">All Files</p>
                            <div class="row">
                                <div class="col-lg-1 col-md-6 mb-lg-0 mb-4">
                                    <img src="<?= base_url() ?>images/brief/JPG.png" style="width: 80px" class="card-img-top" alt="faq-video-tutorials">
                                </div>
                                <div class="col-lg-1 col-md-6 mb-lg-0 mb-4">
                                    <img src="<?= base_url() ?>images/brief/PNG.png" style="width: 80px" class="card-img-top" alt="faq-video-tutorials">
                                </div>
                                <div class="col-lg-1 col-md-6 mb-md-0 mb-4">
                                    <img src="<?= base_url() ?>images/brief/pdf.png" style="width: 80px" class="card-img-top" alt="faq-video-tutorials">
                                </div>
                                <div class="col-lg-1 col-md-6">
                                    <img src="<?= base_url() ?>images/brief/Ps.png" style="width: 80px" class="card-img-top" alt="faq-video-tutorials">
                                </div>
                            </div>

                        </div>
                        

                    </div>
                </div>

            </div>
                <div class="footer-wrapper">
                    <div class="footer-section f-section-1">
                        <p class="">Copyright © 2021 <a target="_blank" href="https://designreset.com">DesignReset</a>, All rights reserved.</p>
                    </div>
                    <div class="footer-section f-section-2">
                        <p class="">Coded with <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg></p>
                    </div>
                </div>
            </div>
                <!--  END CONTENT AREA  -->
        </div>
        <?php endforeach ?>

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
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
    <script>
       $(":range").rangeinput();
       $('#fieldset1 *').unbind(); // for all events
    </script>
    <script src="<?= base_url() ?>assets/member/assets/js/custom.js"></script>
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->
    <script src="<?= base_url() ?>assets/member/assets/js/pages/faq/faq.js"></script>
    <!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->
</body>
</html>