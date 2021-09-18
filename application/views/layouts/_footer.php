        <footer class="footer-half sub-bg section-padding pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="cont">
                            <div class="logo">
                                <a href="#0">
                                    <?php foreach (getLogo() as $logo) : ?>
                                    <img src="<?= base_url(); ?>images/logo/<?= $logo->image ?>" alt="<?= $logo->title ?>" style="width:250px">
                                    <?php endforeach ?>
                                </a>
                            </div>
                            <div class="con-info custom-font">
                                <ul>
                                    <?php foreach (getAbout() as $about) : ?>
                                    <li><span>Email : </span> <?= $about->email ?></li>
                                    <li><span>Address : </span> <?= $about->address ?></li>
                                    <li><span>Phone : </span> <?= $about->phone ?>&nbsp;&nbsp;&nbsp; <a href="https://wa.me/<?= $about->phone ?>" target="_blank"><i class="fa fa-whatsapp"></i></a></li>
                                    <?php endforeach ?>
                                </ul>
                            </div>
                            <div class="social-icon">
                                <h6 class="custom-font stit simple-btn">Follow Us</h6>
                                <div class="social">
                                    <?php foreach (getAbout() as $about) : ?>
                                    <a href="<?= $about->facebook ?>" target="_blank" class="icon">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
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
                        </div>
                    </div>
                    <div class="col-lg-5 offset-lg-2">
                        <div class="subscribe mb-50">
                            <h6 class="custom-font stit simple-btn">Newsletter</h6>
                            <p>Sign up for subscribe out newsletter!</p>
                            <form method="post" action="home/sendEmail">
                                <div class="form-group custom-font">
                                    <input type="email" name="email" placeholder="Your Email" required="true">
                                    <button type="submit" class="cursor-pointer">Subscribe</button>
                                </div>
                            </form>
                        </div>
                        <div class="insta">
                            <a href="<?= base_url() ?>our-privacy-policy.pdf" target="_blank">
                                Privacy & Policy
                            </a>
                            <br /><br />
                            <a href="<?= base_url() ?>term-and-conditions.pdf" target="_blank">
                                Term & Conditions
                            </a>
                    </div>
                    </div>
                </div>
                <?php foreach (getSeo() as $seo) : ?>
                <div class="copyrights text-center">
                    <p>© <script>document.write(new Date().getFullYear())</script> <?= $seo->title ?> All Rights Reserved</p>
                </div>
                <?php endforeach ?>
            </div>
        </footer>
    </div>
    <script src="<?= base_url(); ?>assets/dark-mode/js/jquery-3.0.0.min.js"></script>
    <script src="<?= base_url(); ?>assets/dark-mode/js/sweet-alert.init.js"></script>
    <script src="<?= base_url(); ?>assets/dark-mode/js/sweetalert2.all.min.js"></script>
    <script src="<?= base_url(); ?>assets/dark-mode/js/jquery-migrate-3.0.0.min.js"></script>
    <script src="<?= base_url(); ?>assets/dark-mode/js/plugins.js"></script>
    <script src="<?= base_url(); ?>assets/dark-mode/js/scripts.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.4.4/vue.js"></script>
    <script>
        $(document).ready(function(){
			$('ul').click(function(){
				$('ul').toggleClass('active')
				$('section').toggleClass('dark')
			})
		})
    </script>
    <div id="fb-root"></div>
    <script>(function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    <div class="fb-customerchat" attribution=setup_tool page_id="103539725088935" theme_color="#000000"
        logged_in_greeting="Hi! Welcome to mamakriau.com  How can we help you?"
        logged_out_greeting="Hi! Welcome to mamakriau.com  How can we help you?">
    </div>
</body>
</html>