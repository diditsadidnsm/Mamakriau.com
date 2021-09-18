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
    <title><?= $row->book_title ?></title>
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
        <section class="page-header blg">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-7 col-md-9">
                        <div class="cont text-center">
                            <h2><?= $row->book_title ?></h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="blog-pg single section-padding pt-0">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-11">
                        <div class="post">
                            <div class="img">
                                <img src="<?= base_url(); ?>/images/blog/<?= $row->image ?>" alt="<?= $row->book_title ?>">
                            </div>
                            <div class="content pt-20">
                                <div class="row justify-content-center">
                                    <div class="col-lg-10">
                                        <div class="cont">
                                            <?= $row->description ?>
                                            
                                        </div>
                                        <div class="author">
                                            <div class="author-img">
                                                <img src="img/blog/01.jpg" alt="">
                                            </div>
                                            <div class="info">
                                                <h6><span>author :</span> <?= $row->writer ?></h6>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <a href="<?= base_url('blog') ?>"><i class="fa fa-arrow-left"></i> Back to Our Blog</a>

                            <div class="comments-area">
                                <h5>Comments :</h5>
                            </div>
                            <br />
                            <form method="post" action="blog/comment">
                                <div class="messages"></div>
                                <div class="controls">
                                    <div class="form-group">
                                        <input id="form_name" type="text" name="name" class="form-control" placeholder="Full Name">
                                    </div>
                                    <div class="form-group">
                                        <input id="form_email" type="email" name="email" class="form-control" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <textarea id="form_message" name="message" class="form-control" placeholder="Comments" rows="4"></textarea>
                                    </div>
                                    <button type="submit" class="btn-curve btn-lit"><span>Send Comment</span></button>
                                </div>
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <?php endforeach ?>