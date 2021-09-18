<!DOCTYPE html>
<html lang="zxx">
<head>
    <?php foreach ($rows as $row) : ?>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="author" content="Nashiruddien Sadid Mustaqim">
    <meta name="generator" content="Jekyll v3.8.5">
    <?php foreach (getSeo() as $seo) : ?>
    <meta name="description" content="<?= $seo->description ?>" />
    <meta name="keyword" content="<?= $seo->keyword ?>" />
	<meta property="og:site_name" content="<?= $seo->site ?>" />
	<meta property="og:site" content="<?= $seo->title ?>" /> 
	<meta property="og:title" content="<?= $seo->title ?>"/> 
	<meta property="og:description" content="<?= $seo->description ?>" /> 
	<meta property="og:image" content="<?= base_url() ?>/images/seo/<?= $seo->image ?>" /> 
	<meta property="og:url" content="<?= $seo->url ?>" /> 
	<meta property="og:type" content="<?= $seo->type ?>" />
    <title><?= $row->product_title ?> | <?= $seo->title ?></title>
    <link rel="icon" href="<?= base_url() ?>/images/seo/<?= $seo->image ?>">
    <?php endforeach ?>
    <link rel="shortcut icon" href="img/favicon.ico" />
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,500,600,700,800,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Barlow+Condensed:wght@200;300;400;500;600;700&display=swap"
        rel="stylesheet">
    <?php foreach (getAbout() as $about) : ?>
    <link rel="stylesheet" href="<?= base_url(); ?>/assets/<?= $about->mode ?>/css/plugins.css" />
    <link rel="stylesheet" href="<?= base_url(); ?>/assets/<?= $about->mode ?>/css/style2.css" />
    <?php endforeach ?>
    <script src="https://use.fontawesome.com/2d5032f7c5.js"></script>
</head>
<body>
    <div id="preloader">
    </div>
    <div class="progress-wrap cursor-pointer">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
        </svg>
    </div>
    <div class="mouse-cursor cursor-outer"></div>
    <div class="mouse-cursor cursor-inner"></div>
    
    <?php $this->load->view('layouts/_navbar') ?>
    
    <div class="wrapper">
        <section class="page-header proj-det bg-img parallaxie valign" data-background="<?= base_url(); ?>/images/category/<?= $row->category_image ?>"
            data-overlay-dark="4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-9">
                        <div class="cont">
                            <h6><?= $row->category_title ?></h6>
                            <h2><?= $row->product_title ?></h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="item mt-30">
                            <h6>Client</h6>
                            <p><a href="<?= $row->url ?>"><?= $row->client ?></a></p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="item mt-30">
                            <h6>Date</h6>
                            <p><?= $row->date ?></p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="item mt-30">
                            <h6>Categories</h6>
                            <p><a href="<?= base_url("/project/category/$row->category_slug") ?>"><?= $row->category_title ?></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="intro-section section-padding pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4">
                        <div class="htit sm-mb30">
                            <h4>Description</h4>
                        </div>
                    </div>
                    <div class="col-lg-8 offset-lg-1 col-md-8">
                        <div class="text">
                            <p class="wow txt" data-splitting><?= $row->description ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="portfolio section-padding pb-70">
            <div class="container">

                <!-- gallery -->
                <div class="gallery full-width">

                    <!-- gallery item -->
                    <div class="col-md-12 items graphic">
                        <div class="item-img wow fadeInUp" data-wow-delay=".4s">
                            <a href="<?= base_url(); ?>/images/detail/<?= $row->detail_image ?>" target="_blank">
                                <img src="<?= base_url(); ?>/images/detail/<?= $row->detail_image ?>" alt="<?= $row->product_title ?>">
                            </a>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-6">
                        <p style="text-align: left;"><a href="javascript:history.go(-1)"><i class="fa fa-arrow-left"></i>&nbsp;&nbsp; Previous Page</a></p>
                    </div>
                    <div class="col-md-6">
                        <form action="get" action="">
                            <p style="text-align: right;"><a href="<?= base_url("/project/detail/$row->product_slug") ?>">Next Page &nbsp;&nbsp;<i class="fa fa-arrow-right"></i></a></p>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <?php endforeach ?>
        <section class="call-action section-padding bg-img" data-background="<?= base_url() ?>assets/img/pattern.png">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-lg-9">
                        <div class="content sm-mb30">
                            <h6 class="wow" data-splitting>Let’s Talk</h6>
                            <h2 class="wow custom-font" data-splitting>about your <b>next project</b>.</h2>
                        </div>
                    </div>

                    <div class="col-md-4 col-lg-3 valign">
                        <a href="<?= base_url('contact') ?>" class="btn-curve btn-lit"><span>Get In Touch</span></a>
                    </div>

                </div>
            </div>
        </section>
        <footer class="footer-half sub-bg">
            <div class="container">
                <?php foreach (getSeo() as $seo) : ?>
                <div class="copyrights text-center">
                    <p>© <script>document.write(new Date().getFullYear())</script> <?= $seo->title ?> All Rights Reserved</p>
                </div>
                <?php endforeach ?>
            </div>
        </footer>
    </div>
    <script src="<?= base_url(); ?>/assets/dark-mode/js/jquery-3.0.0.min.js"></script>
    <script src="<?= base_url(); ?>/assets/dark-mode/js/jquery-migrate-3.0.0.min.js"></script>
    <script src="<?= base_url(); ?>/assets/dark-mode/js/plugins.js"></script>
    <script src="<?= base_url(); ?>/assets/dark-mode/js/scripts.js"></script>