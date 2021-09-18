
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>CORK Admin Template - Notes Application</title>
    <link rel="icon" type="image/x-icon" href="<?= base_url() ?>assets/member/assets/img/favicon.ico"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&display=swap" rel="stylesheet">
    <link href="<?= base_url() ?>assets/member/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/member/assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="<?= base_url() ?>assets/member/assets/css/apps/notes.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/member/assets/css/forms/theme-checkbox-radio.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->
</head>
<body class="alt-menu sidebar-noneoverflow">
    
    <?php $this->load->view('member/material/nam_navbar') ?>
    <?php $this->load->view('member/material/nam_topbar') ?>
        
        <!--  BEGIN CONTENT AREA  -->
        <div id="content" class="main-content">
            <div class="layout-px-spacing">
                <div class="page-header">
                    <nav class="breadcrumb-one" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Apps</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><a href="javascript:void(0);">Notes</a></li>
                        </ol>
                    </nav>
                </div>
                
                <div class="row app-notes layout-top-spacing" id="cancel-row">
                    <div class="col-lg-12">
                        <div class="app-hamburger-container">
                            <div class="hamburger"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu chat-menu d-xl-none"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg></div>
                        </div>

                        <div class="app-container">
                            
                            <div class="app-note-container">

                                <div class="app-note-overlay"></div>

                                <div class="tab-title">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12 col-12">

                                            <p class="group-section"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-tag"><path d="M20.59 13.41l-7.17 7.17a2 2 0 0 1-2.83 0L2 12V2h10l8.59 8.59a2 2 0 0 1 0 2.82z"></path><line x1="7" y1="7" x2="7" y2="7"></line></svg> Project Category</p>

                                            <ul class="nav nav-pills d-block group-list" id="pills-tab" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link list-actions g-dot-primary" id="logo-design">Logo Design</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link list-actions g-dot-success" id="web-app">Web &amp; App</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link list-actions g-dot-warning" id="logo-brand">Logo &amp; Brand Identity</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link list-actions g-dot-danger" id="nonprofit">NonProfit Organization</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>


                                <div id="ct" class="note-container note-grid">
                                    
                                    <?php foreach ($logodesign as $content) : ?>
                                    <div class="note-item all-notes logo-design">
                                        <div class="note-inner-content">
                                            <div class="note-content">
                                                <span class="badge badge-warning">On Progress</span>
                                                <br /><br />
                                                <a href="<?= base_url("member/brief/detail/$content->url") ?>">
                                                    <p class="note-title" data-noteTitle="Meeting with Kelly"><?= $content->project_name ?></p>
                                                </a>
                                                <p class="meta-time"><?= date($content->invoice_date) ?></p>
                                                <div class="note-description-content">
                                                    <p class="note-description" data-noteDescription="Curabitur facilisis vel elit sed dapibus sodales purus rhoncus."><?= substr($content->description_target_audience, 0, 80) ?>...</p>
                                                </div>
                                            </div>
                                            <div class="note-action">
                                                <a href="#!">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-3"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endforeach ?>
                                    
                                    <?php foreach ($webapp as $content) : ?>
                                    <div class="note-item all-notes web-app">
                                        <div class="note-inner-content">
                                            <div class="note-content">
                                                <span class="badge badge-warning">On Progress</span>
                                                <br /><br />
                                                <a href="<?= base_url("member/brief/detail/$content->url") ?>">
                                                    <p class="note-title" data-noteTitle="Meeting with Kelly"><?= $content->project_name ?></p>
                                                </a>
                                                <p class="meta-time"><?= date($content->invoice_date) ?></p>
                                                <div class="note-description-content">
                                                    <p class="note-description" data-noteDescription="Curabitur facilisis vel elit sed dapibus sodales purus rhoncus."><?= substr($content->description_target_audience, 0, 80) ?>...</p>
                                                </div>
                                            </div>
                                            <div class="note-action">
                                                <a href="#!">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-3"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endforeach ?>

                                    <?php foreach ($brandidentity as $content) : ?>
                                    <div class="note-item all-notes logo-brand">
                                        <div class="note-inner-content">
                                            <div class="note-content">
                                                <span class="badge badge-warning">On Progress</span>
                                                <br /><br />
                                                <a href="<?= base_url("member/brief/detail/$content->url") ?>">
                                                    <p class="note-title" data-noteTitle="Meeting with Kelly"><?= $content->project_name ?></p>
                                                </a>
                                                <p class="meta-time"><?= date($content->invoice_date) ?></p>
                                                <div class="note-description-content">
                                                    <p class="note-description" data-noteDescription="Curabitur facilisis vel elit sed dapibus sodales purus rhoncus."><?= substr($content->description_target_audience, 0, 80) ?>...</p>
                                                </div>
                                            </div>
                                            <div class="note-action">
                                                <a href="#!">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-3"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endforeach ?>
                                    
                                    <?php foreach ($nonprofit as $content) : ?>
                                    <div class="note-item all-notes nonprofit">
                                        <div class="note-inner-content">
                                            <div class="note-content">
                                                <span class="badge badge-warning">On Progress</span>
                                                <br /><br />
                                                <a href="<?= base_url("member/brief/detail/$content->url") ?>">
                                                    <p class="note-title" data-noteTitle="Meeting with Kelly"><?= $content->project_name ?></p>
                                                </a>
                                                <p class="meta-time"><?= date($content->invoice_date) ?></p>
                                                <div class="note-description-content">
                                                    <p class="note-description" data-noteDescription="Curabitur facilisis vel elit sed dapibus sodales purus rhoncus."><?= substr($content->description_target_audience, 0, 80) ?>...</p>
                                                </div>
                                            </div>
                                            <div class="note-action">
                                                <a href="#!">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-3"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endforeach ?>

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
    <!-- END MAIN CONTAINER -->
    
    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="<?=  base_url() ?>assets/member/assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="<?=  base_url() ?>assets/member/bootstrap/js/popper.min.js"></script>
    <script src="<?=  base_url() ?>assets/member/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?=  base_url() ?>assets/member/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="<?=  base_url() ?>assets/member/assets/js/app.js"></script>
    
    <script>
        $(document).ready(function() {
            App.init();
        });
    </script>
    <script src="<?=  base_url() ?>assets/member/assets/js/custom.js"></script>
    <!-- END GLOBAL MANDATORY SCRIPTS -->

    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="<?=  base_url() ?>assets/member/assets/js/ie11fix/fn.fix-padStart.js"></script>
    <script src="<?=  base_url() ?>assets/member/assets/js/apps/notes.js"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>