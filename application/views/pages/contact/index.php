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

    <header class="works-header fixed-slider hfixd valign">
        <div class="container">
            <?php $this->load->view('layouts/_alert') ?>
            <div class="row justify-content-center">
                <div class="col-lg-9 col-md-11 static">
                    <div class="capt mt-50">
                        <div class="parlx">
                            <h2 class="custom-font"><span>Let's</span>Talk About Your project.</h2>
                            <p>Feel free to ask me any question or let’s do to talk about
                                our future collaboration.</p>
                        </div>

                        <div class="bactxt custom-font valign">
                            <span class="full-width">Contact</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="main-content">
        <?php foreach (getAbout() as $about) : ?>
        <section class="contact section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form md-mb50">
                            <h4 class="extra-title mb-50">Get In Touch.</h4>
                            <form method="post" action="contact/sendEmail">
                                <div class="messages"></div>
                                <div class="controls">
                                    <div class="form-group">
                                        <input id="form_name" type="text" name="name" placeholder="Name"
                                            required="required">
                                    </div>
                                    <div class="form-group">
                                        <input id="form_email" type="email" name="email" placeholder="Email"
                                            required="required">
                                    </div>
                                    <div class="form-group">
                                        <textarea id="form_message" name="message" placeholder="Message" rows="4"
                                            required="required"></textarea>
                                    </div>
                                    <button type="submit" class="btn-curve btn-lit"><span>Send Message</span></button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-5 offset-lg-1">
                        <div class="cont-info">
                            <h4 class="extra-title mb-50">Contact Info.</h4>
                            <h3 class="custom-font wow" data-splitting>Let's Talk.
                            </h3>
                            <div class="item mb-40">
                                <h5><a href="mailto:<?= $about->email ?>"><?= $about->email ?></a></h5>
                                <h5><a href="tel:<?= $about->phone ?>"><?= $about->phone ?></a></h5>
                            </div>
                            <h3 class="custom-font wow" data-splitting>Visit Us.
                            </h3>
                            <div class="item">
                                <h6><?= $about->address ?></h6>
                            </div>
                            <div class="social mt-50">
                                <a href="<?= $about->facebook ?>" target="_blank" class="icon">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="<?= $about->instagram ?>" target="_blank" class="icon">
                                    <i class="fab fa-instagram"></i>
                                </a>
                                <a href="<?= $about->linkedin ?>" target="_blank" class="icon">
                                    <i class="fab fa-linkedin"></i>
                                </a>
                                <a href="<?= $about->bhc ?>" target="_blank" class="icon">
                                    <i class="fab fa-behance"></i>
                                </a>
                                <a href="<?= $about->drb ?>" target="_blank" class="icon">
                                    <i class="fab fa-dribbble"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <iframe src="<?= $about->maps ?>" width="2200" height="450" frameborder="0" style="border:0;" allowfullscreen="true" aria-hidden="false" tabindex="0"></iframe>
        <?php endforeach ?>