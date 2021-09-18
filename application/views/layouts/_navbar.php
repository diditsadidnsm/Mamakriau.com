    <nav class="navbar navbar-expand-lg">
        <div class="container">

            <?php foreach (getLogo() as $logo) : ?>
            <a class="logo" href="<?= base_url('/'); ?>">
                <img src="<?= base_url(); ?>/images/logo/<?= $logo->image ?>" alt="<?= $logo->title ?>" style="width:250px;">
            </a>
            <?php endforeach ?>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-bar"><i class="fas fa-bars"></i></span>
            </button>

            <!-- navbar links -->
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <?php foreach (getNavbar() as $navbar) : ?>
                    <li class="nav-item">
                        <a class="nav-link" href="<?= $navbar->url ?>"><?= $navbar->title ?></a>
                    </li>
                    <?php endforeach ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                            aria-haspopup="true" aria-expanded="false">Project</a>
                        <div class="dropdown-menu">
                            <?php foreach(getCategories() as $category) : ?>
                            <a class="dropdown-item" href="<?= base_url("/project/category/$category->slug") ?>"><?= $category->title ?></a>
                            <?php endforeach ?>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url('blog') ?>">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url('contact') ?>">Contact</a>
                    </li>
                    <?php if (! $this->session->userdata('is_login')) : ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                            aria-haspopup="true" aria-expanded="false">Account</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="<?= base_url('login') ?>">Login</a>
                            <a class="dropdown-item" href="<?= base_url('register') ?>">Register</a>
                        </div>
                    </li>
                    <?php else : ?>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                            aria-haspopup="true" aria-expanded="false"><?= $this->session->userdata('name') ?></a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="<?= base_url('member/dashboard') ?>">Dashboard</a>
                            <a class="dropdown-item" href="<?= base_url('logout') ?>">Logout</a>
                        </div>
                    </li>
                    <?php endif ?>
                    <li class="nav-item">
                        <a class="btn-curve btn-lit mt-5" href="<?= base_url('design') ?>" data-splitting>Get a Design</a>
                    </li>
                </ul>
                <div class="search">
                    <span class="icon pe-7s-search cursor-pointer"></span>
                    <div class="search-form text-center custom-font">
                        <form action="<?= base_url("/project/search") ?>" method="POST">
                            <input type="text" name="keyword" placeholder="Search a Project" value="<?= $this->session->userdata('keyword') ?>">
                        </form>
                        <span class="close pe-7s-close cursor-pointer"></span>
                    </div>
                </div>
            </div>
        </div>
    </nav>