<!DOCTYPE html>
<html lang="zxx">
<head>
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
    <title><?= $title ?> | <?= $seo->title ?></title>
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
    <link rel="stylesheet" href="<?= base_url(); ?>/assets/<?= $about->mode ?>/css/style.css" />
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
    
    <?php foreach ($content as $row) : ?>
    <header class="pages-header bg-img valign parallaxie" data-background="<?= base_url(); ?>/images/about/<?= $row->image ?>" data-overlay-dark="5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="cont text-center">
                        <h1><?= $row->title ?></h1>
                        <div class="path">
                            <a href="<?= base_url('/') ?>">Home</a><span>/</span><a href="<?= base_url('about') ?>" class="active">About</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section class="intro-section section-padding pb-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4">
                    <div class="htit sm-mb30">
                        <h4>Who We Are ?</h4>
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
    <section class="services section-padding">
        <div class="container">
            <div class="row">
                <?php foreach (getIcon() as $icon) : ?>
                <div class="col-lg-4">
                    <div class="item md-mb50 wow fadeInUp" data-wow-delay=".3s">
                        <span><img src="<?= base_url(); ?>/images/icon/<?= $icon->image ?>" alt="<?= $icon->title ?>"></span>
                        <h6><?= $icon->title ?></h6>
                        <p><?= $icon->description ?></p>
                    </div>
                </div>
                <?php endforeach ?>
            </div>
        </div>
    </section>
    <section class="block-sec">
        <div class="background bg-img section-padding pb-0" data-background="<?= base_url(); ?>/images/about/about.png" data-overlay-dark="8">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="vid-area">
                            <div class="vid-icon">
                                <a class="vid" href="https://www.youtube.com/watch?v=8msXTwkYXFI" autoplay="true" fullwidth="true">
                                    <div class="vid-butn">
                                        <span class="icon">
                                            <center>
                                                <i class="fas fa-play"></i>
                                        </span>
                                    </div>
                                </a>
                            </div>

                            <div class="cont">
                                <h3 class="wow" data-splitting>So that's us. There's no other way to put it.</h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 offset-lg-1">
                        <div class="testim-box">
                            <div class="head-box">
                                <h6 class="wow fadeIn" data-wow-delay=".5s">Our Happy Clients</h6>
                                <h4 class="wow fadeInLeft" data-wow-delay=".5s">What Client's Say?</h4>
                            </div>
                            <div class="slic-item wow fadeInUp" data-wow-delay=".5s">
                                <?php foreach (getAuthor() as $author) : ?>
                                <div class="item">
                                    <p><?= $author->say ?></p>
                                    <div class="info">
                                        <div class="img">
                                            <div class="img-box">
                                                <img src="<?= base_url(); ?>/images/author/<?= $author->image; ?>" alt="<?= $author->name ?>">
                                            </div>
                                        </div>
                                        <div class="cont">
                                            <div class="author">
                                                <h6 class="author-name custom-font"><?= $author->name ?></h6>
                                                <span class="author-details"><?= $author->title ?></span>
                                            </div>
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
    </section>
    <section class="skills-circle sub-bg pt-50 pb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="item wow fadeInLeft" data-wow-delay=".6">
                                    <div class="skill" data-value="0.9">
                                        <span class="custom-font">90%</span>
                                    </div>
                                    <div class="cont">
                                        <span>STRATEGIC BRAND SOLUTION</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="item wow fadeInLeft" data-wow-delay=".3">
                                    <div class="skill" data-value="0.75">
                                        <span class="custom-font">75%</span>
                                    </div>
                                    <div class="cont">
                                        <span>GRAPHIC DESIGN PROJECT</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="item wow fadeInLeft" data-wow-delay=".3">
                                    <div class="skill" data-value="0.75">
                                        <span class="custom-font">75%</span>
                                    </div>
                                    <div class="cont">
                                        <span>WEB & APP DEVELOPMENT</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="team section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 valign">
                    <div class="full-width">
                        <div class="sec-head custom-font mb-0">
                            <h6>Employees</h6>
                            <h3>Our Team.</h3>
                        </div>
                        <div class="navs mt-30 wow fadeInUp" data-wow-delay=".3s">
                            <span class="prev cursor-pointer">
                                <i class="fas fa-chevron-left"></i>
                            </span>
                            <span class="next cursor-pointer">
                                <i class="fas fa-chevron-right"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="team-container">
                        <?php foreach (getTeam() as $team) : ?>
                        <div class="item wow fadeInUp" data-wow-delay=".3s">
                            <div class="img wow imago">
                                <img src="<?= base_url(); ?>/images/team/<?= $team->image ?>" alt="<?= $team->name ?>">
                            </div>
                            <div class="info">
                                <h5><?= $team->name ?></h5>
                                <span><?= $team->title ?></span>
                            </div>
                        </div>
                        <?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="call-action section-padding bg-img" data-background="<?= base_url() ?>/assets/img/pattern.png">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-lg-9">
                    <div class="content sm-mb30">
                        <h6 class="wow" data-splitting>Let’s Talk</h6>
                        <h2 class="wow custom-font" data-splitting>about your <b>next project</b>.</h2>
                    </div>
                </div>

                <div class="col-md-4 col-lg-3 valign">
                    <a href="<?= base_url('contact') ?>" class="btn-curve btn-blc wow fadeInUp" data-wow-delay=".5s"><span>Get In
                            Touch</span></a>
                </div>

            </div>
        </div>
    </section>
    <?php endforeach ?>