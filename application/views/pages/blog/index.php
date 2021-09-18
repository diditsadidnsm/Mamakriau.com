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
    <link rel="shortcut icon" href="<?= base_url() ?>/images/seo/<?= $seo->image ?>" />
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

    <div class="wrapper">
        <section class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-9">
                        <div class="cont">
                            <h1 class="extra-title mb-10">Our Blog.</h1>
                            <p>All the most current news and events of our creative team.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="blog-pg section-padding pt-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="posts">
                            <?php foreach ($content as $row) : ?>
                            <div class="item">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="img">
                                            <a href="<?= base_url("/blog/detail/$row->book_slug") ?>">
                                                <img src="<?= base_url(); ?>/images/blog/<?= $row->image ?>" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="content">
                                            <div class="row">
                                                <div class="col-10">
                                                    <div class="tags">
                                                        <a href="#0"><?= $row->book_writer?></a>
                                                        <a href="#0"><?= $row->kategori_title?></a>
                                                    </div>
                                                    <h4 class="title"><a href="<?= base_url("/blog/detail/$row->book_slug") ?>"><?= $row->book_title ?></a></h4>
                                                    <p><?= substr("<?= $row->description?>", 47, 300) ?> ...</p>
                                                    <a href="<?= base_url("/blog/detail/$row->book_slug") ?>" class="simple-btn mt-30">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br /><br/>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>