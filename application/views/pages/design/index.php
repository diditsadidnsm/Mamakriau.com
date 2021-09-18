    <!-- ==================== Start Slider ==================== -->

    <header class="slider slider-prlx fixed-slider text-center">
        <div class="swiper-container parallax-slider">
            <div class="swiper-wrapper">
                <?php foreach (getBannerDesign() as $banner) : ?>
                <div class="swiper-slide">
                    <div class="bg-img valign" data-background="<?= base_url() ?>images/dbanner/<?= $banner->image ?>" data-overlay-dark="0">
                        
                    </div>
                </div>
                <?php endforeach ?>
            </div>

            <!-- slider setting -->
            <div class="setone setwo">
                <div class="swiper-button-next swiper-nav-ctrl next-ctrl cursor-pointer">
                    <i class="fas fa-chevron-right"></i>
                </div>
                <div class="swiper-button-prev swiper-nav-ctrl prev-ctrl cursor-pointer">
                    <i class="fas fa-chevron-left"></i>
                </div>
            </div>
            <div class="swiper-pagination top botm custom-font"></div>

            <div class="social-icon">
                <?php foreach (getAbout() as $about) : ?>
                    <a href="<?= $about->facebook ?>" target="_blank" class="icon">
                        <i class="fab fa-facebook-f"></i></a>
                    <a href="<?= $about->instagram ?>" target="_blank" class="icon">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="<?= $about->linkedin ?>" target="_blank" class="icon">
                        <i class="fab fa-linkedin"></i>
                    </a>
                    <a href="<?= $about->twitter ?>" target="_blank" class="icon">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="<?= $about->bhc ?>" target="_blank" class="icon">
                        <i class="fab fa-behance"></i>
                    </a>
                    <a href="<?= $about->drb ?>" target="_blank" class="icon">
                        <i class="fab fa-dribbble"></i>
                    </a>
                <?php endforeach ?>
            </div>
        </div>
    </header>

    <!-- ==================== End Slider ==================== -->


    <div class="main-content">
        
        <!-- ==================== Start Services ==================== -->

        <section class="services section-padding">
            <div class="container">
                <div class="sec-head custom-font text-center">
                    <h6 class="wow fadeIn" data-wow-delay=".5s">Very Easy Process</h6>
                    <h3 class="wow" data-splitting>How It Works.</h3>
                    <span class="tbg">How It Works</span>
                </div>
                <div class="row">
                    <?php foreach (getStep() as $step) : ?>
                    <div class="col-lg-3">
                        <div class="item md-mb50 wow fadeInUp" data-wow-delay=".5s">
                            <span>
                                <img src="<?= base_url() ?>images/dstep/<?= $step->image ?>" class="img-fluid">
                            </span>
                            <p><?= $step->sub ?></p>
                            <h6><?= $step->title ?></h6>
                        </div>
                    </div>
                    <?php endforeach ?>
                </div>
            </div>
        </section>

        <!-- ==================== End Services ==================== -->

        <!-- ==================== Start Services ==================== -->

        <section class="services section-padding sub-bg">
            <div class="container">
                <div class="sec-head custom-font text-center">
                    <h6 class="wow fadeIn" data-wow-delay=".5s">Advantages Us</h6>
                    <h3 class="wow" data-splitting>Why Us.</h3>
                    <span class="tbg">Why Us</span>
                </div>
                <div class="row">
                    <?php foreach (getWhyWe() as $why) : ?>
                    <div class="col-lg-4">
                        <div class="item md-mb50 wow fadeInUp" data-wow-delay=".5s">
                            <span>
                                <img src="<?= base_url() ?>images/dwhy/<?= $why->image ?>" class="img-fluid">
                            </span>
                            <h6><?= $why->title ?></h6>
                            <p><?= $why->sub ?></p>
                        </div>
                    </div>
                    <?php endforeach ?>
                </div>
            </div>
        </section>

        <!-- ==================== End Services ==================== -->

    <!-- ==================== Start Services ==================== -->

    <section class="services section-padding">
        <div class="container">
            <div class="sec-head custom-font text-center">
                <h3 class="wow" data-splitting>Pricing</h3>
            </div>
            <div class="row rone">
                
                <?php if (! $this->session->userdata('is_login')) : ?>
                
                <?php foreach (getServices() as $services) : ?>
                <div class="col-lg-3 wow fadeInUp" data-wow-delay=".4s">
                    <div class="mas-item">
                        <span>
                            <img src="<?= base_url() ?>/images/services/<?= $services->image ?>" class="img-fluid">
                        </span>
                        <h6><?= $services->title ?></h6>
                        <div class="text-right">
                            <a class="more" href="https://mamakriau.com/login">
                            <i class="fas fa-chevron-right"></i></a>
                        </div>
                        <div class="bg-color"></div>
                    </div>
                </div>
                <?php endforeach ?>
                
                <?php else : ?>
                
                <?php foreach (getServices() as $services) : ?>
                <div class="col-lg-3 wow fadeInUp" data-wow-delay=".4s">
                    <div class="mas-item">
                        <span>
                            <img src="<?= base_url() ?>/images/services/<?= $services->image ?>" class="img-fluid">
                        </span>
                        <h6><?= $services->title ?></h6>
                        <div class="text-right">
                            <a class="more" href="<?= $services->url ?>">
                            <i class="fas fa-chevron-right"></i></a>
                        </div>
                        <div class="bg-color"></div>
                    </div>
                </div>
                <?php endforeach ?>
                
                <?php endif ?>
            </div>
        </div>
    </section>

    <!-- ==================== End Services ==================== -->


        <section class="work-carousel section-padding caroul sub-bg position-re" id="portfolio">
        <div class="container-fluid">
            <div class="sec-head custom-font text-center">
                <h6 class="wow fadeIn" data-wow-delay=".5s">Project</h6>
                <h3 class="wow" data-splitting>Our Current Project.</h3>
                <span class="tbg">Our Current Project</span>
            </div>
            <div class="row">
                <div class="col-lg-12 no-padding">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <?php foreach (getHomeProduct() as $row) : ?>
                            <div class="swiper-slide">
                                <div class="content wow fadeInUp" data-wow-delay=".3s">
                                    <div class="item-img bg-img wow imago" data-background="<?= base_url(); ?>images/product/<?= $row->image; ?>"></div>
                                </div>
                            </div>
                            <?php endforeach ?>
                        </div>

                        <!-- slider setting -->
                        <div class="swiper-button-next swiper-nav-ctrl next-ctrl cursor-pointer">
                            <i class="fa fa-angle-right"></i>
                        </div>
                        <div class="swiper-button-prev swiper-nav-ctrl prev-ctrl cursor-pointer">
                            <i class="fa fa-angle-left"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>