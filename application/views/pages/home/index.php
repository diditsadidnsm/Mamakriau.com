    <header class="slider slider-prlx fixed-slider text-left" id="first">
        <div class="swiper-container parallax-slider">
            <div class="swiper-wrapper">
                <?php foreach (getBanner() as $banner) : ?>
                <div class="swiper-slide">
                    <div class="bg-img valign" data-background="<?= base_url(); ?>images/banner/<?= $banner->image; ?>" data-overlay-dark="4">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="caption dig">
                                        <h1 data-splitting style="font-size:<?= $banner->size; ?>px; color:#F2DA63"><?= $banner->title; ?> <div class="tline"><?= $banner->title2; ?></div>
                                        </h1>
                                        <a href="<?= $banner->url; ?>" class="simple-btn mt-50">
                                            <span style="color:#F2DA63">Discover Works</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach ?>
            </div>
        </div>
    </header>
    <div class="main-content">
        <section class="portfolio section-padding pb-70" id="category">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="cont">
                            <center><h3 class="main-title wow" data-splitting>{{title}}</h3></center>
                        </div>
                    </div>
                    <div class="gallery full-width">
                        <?php foreach (getCategoryImage() as $category) : ?>
                        <div class="col-lg-4 col-md-6 items graphic lg-mr">
                            <div class="item-img wow fadeInUp" data-wow-delay=".4s">
                                <a href="<?= base_url("/project/category/$category->slug") ?>">
                                    <img src="<?= base_url(); ?>images/category/<?= $category->image; ?>" alt="<?= $category->title; ?>">
                                </a>
                            </div>
                            <div class="cont">
                                <h6 style="color:#F2DA63"><?= $category->title; ?></h6>
                                <p class="wow fadeInUp" data-wow-delay=".5s"><?= $category->description; ?></p>
                            </div>
                        </div>
                        <?php endforeach ?>
                    </div>
                </div>
            </div>
        </section>
        <script type="text/javascript">
            var app = new Vue({
                el: '#category',
                data: {
                    title: 'How we shape your future.'
                }
                                        
            })
        </script>
        <?php foreach (getSmartWord() as $word) :  ?>
        <section class="testimonials section-padding bg-img parallaxie" data-background="<?= base_url(); ?>/images/word/<?= $word->image; ?>" data-overlay-dark="0">
            <div class="container position-re">
                <div class="sec-head custom-font text-right">
                    <p data-splitting><h3 class="wow" style="text-size:<?= $word->size; ?>px;"><?= $word->title; ?></h3></p>
                </div>
            </div>
        </section>
        <?php endforeach ?>
        <section class="work-carousel section-padding caroul sub-bg position-re" id="portfolio">
        <div class="container-fluid">
            <div class="sec-head custom-font text-center">
                <h6 class="wow fadeIn" data-wow-delay=".5s">{{h6}}</h6>
                <h3 class="wow" data-splitting>{{h3}}</h3>
                <span class="tbg">{{span}}</span>
            </div>
            <div class="row">
                <div class="col-lg-12 no-padding">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <?php foreach ($content as $row) : ?>
                            <div class="swiper-slide">
                                <div class="content wow fadeInUp" data-wow-delay=".3s">
                                    <div class="item-img bg-img wow imago" data-background="<?= base_url(); ?>images/product/<?= $row->image; ?>"></div>
                                    <div class="cont bgbox">
                                        <h4 style="text-align:center; color:#f2da63;"><a href="<?= base_url("/project/detail/$row->product_slug") ?>"><?= $row->product_title; ?></a></h4>
                                    </div>
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
        <script type="text/javascript">
            var app = new Vue({
                el: '#portfolio',
                data: {
                    h6: 'Project',
                    h3: 'Our Project.',
                    span: 'Portfolio'
                }
                                        
            })
        </script>
        <section class="clients-brand section-padding sub-bg">
        <div class="container">
            <div class="brands-crs">
                <?php foreach (getSupport() as $support) : ?>
                <div class="brands">
                    <div class="item" data-wow-delay=".3s">
                        <div class="img">
                            <img src="<?= base_url(); ?>images/support/<?= $support->image; ?>" alt="<?= $support->title; ?>" style="width:150px">
                        </div>
                        <a href="<?= $support->url; ?>" class="link" data-splitting><?= $support->title; ?></a>
                    </div>
                </div>
                <?php endforeach ?>
            </div>
        </div>
        </section>
        <section class="blog-grid section-padding" id="blog">
        <div class="container">
            <div class="sec-head custom-font text-center">
                <h6 class="fadeIn" data-wow-delay=".5s">{{h6}}</h6>
                <h3 class="wow" data-splitting>{{h3}}</h3>
                <span class="tbg">{{span}}</span>
            </div>
            <div class="row">
                <?php foreach (getHomeBlog() as $blog) : ?>
                <div class="col-lg-4">
                    <div class="item list md-mb50 wow fadeInUp" data-wow-delay=".3s">
                        <div class="img">
                            <img src="<?= base_url(); ?>images/blog/<?= $blog->image ?>" alt="<?= $blog->title ?>">
                        </div>
                        <div class="cont sub-bg">
                            <div class="info custom-font">
                                <a href="#0" class="author">
                                    <span>by / <?= $blog->writer ?></span>
                                </a>
                            </div>
                            <h6>
                                <a href="<?= base_url("/blog/detail/$blog->slug") ?>"><?= $blog->title ?></a>
                            </h6>
                            <div class="btn-more custom-font">
                                <a href="<?= base_url("/blog/detail/$blog->slug") ?>" class="simple-btn">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach ?>
            </div>
        </div>
        </section>
        <script type="text/javascript">
            var app = new Vue({
                el: '#blog',
                data: {
                    h6: 'Latest News',
                    h3: 'Our Blogs.',
                    span: 'Blogs'
                }
                                        
            })
        </script>
        <section class="number-sec section-padding sub-bg" id="visitor">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="item no-bord">
                            <span class="icon pe-7s-smile"></span>
                            <h3 class="custom-font"><span class="count"><?= $pengunjungonline ?></span></h3>
                            <p class="wow txt" data-splitting>{{online}}</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <span class="icon pe-7s-portfolio"></span>
                            <h3 class="custom-font"><span class="count"><?= $pengunjunghariini ?></span></h3>
                            <p class="wow txt" data-splitting>{{today}}</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <span class="icon pe-7s-users"></span>
                            <h3 class="custom-font"><span class="count"><?= $totalpengunjung ?></span></h3>
                            <p class="wow txt" data-splitting>{{visitor}}</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="item">
                            <span class="icon pe-7s-medal"></span>
                            <h3 class="custom-font"><span class="count"><?= $project ?></span></h3>
                            <p class="wow txt" data-splitting>{{project}}</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script type="text/javascript">
            var app = new Vue({
                el: '#visitor',
                data: {
                    online: 'Visitor Online',
                    today: 'Visitor Today',
                    visitor: 'Total Visitor',
                    project: 'Project on Page'
                }
                                        
            })
        </script>