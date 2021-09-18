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
    <link rel="stylesheet" href="<?= base_url(); ?>/assets/<?= $about->mode ?>/css/style2.css" />
    <?php endforeach ?>
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

<div class="main-content">    
    <header class="slider showcase-grid" data-carousel="swiper" data-items="4" data-loop="true" data-space="30" data-speed="1000"
        data-mousewheel="true">
        <div id="content-carousel-container-unq-1" class="swiper-container" data-swiper="container">
            <div class="swiper-wrapper">
                <?php foreach ($content as $row) : ?>
                <a href="<?= base_url("/project/detail/$row->product_slug") ?>" class="swiper-slide">
                    <div class="bg-img" data-background="<?= base_url(); ?>/images/mockup/<?= $row->mockup_image ?>" data-tooltip-tit="<?= $row->product_title ?>"
                        data-tooltip-sub="<?= $row->category_title ?>"></div>
                </a>
                <?php endforeach ?>
            </div>
        </div>
        <div class="txt-botm">
            <div id="next" class="swiper-button-next swiper-nav-ctrl cursor-pointer">
                <div>
                    <span class=" custom-font">Next Slide</span>
                </div>
                <div><i class="fas fa-chevron-right"></i></div>
            </div>
            <div id="prev" class="swiper-button-prev swiper-nav-ctrl cursor-pointer">
                <div><i class="fas fa-chevron-left"></i></div>
                <div>
                    <span class=" custom-font">Prev Slide</span>
                </div>
            </div>
        </div>
    </header>
</div>
<script src="<?= base_url(); ?>/assets/dark-mode/js/jquery-3.0.0.min.js"></script>
<script src="<?= base_url(); ?>/assets/dark-mode/js/jquery-migrate-3.0.0.min.js"></script>
<script src="<?= base_url(); ?>/assets/dark-mode/js/plugins.js"></script>
<script src="<?= base_url(); ?>/assets/dark-mode/js/scripts.js"></script>