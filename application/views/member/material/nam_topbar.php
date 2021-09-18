<!--  BEGIN MAIN CONTAINER  -->
    <div class="main-container" id="container">

        <div class="overlay"></div>
        <div class="search-overlay"></div>

        <!--  BEGIN TOPBAR  -->
        <div class="topbar-nav header navbar" role="banner">
            <nav id="topbar">
                <ul class="navbar-nav theme-brand flex-row  text-center">
                    <li class="nav-item theme-logo">
                        <a href="index.html">
                            <?php foreach(getLogo() as $logo) : ?>
                            <img src="<?= base_url(); ?>/images/logo/<?= $logo->image ?>" class="navbar-logo" alt="logo">
                            <?php endforeach ?>
                        </a>
                    </li>
                    <li class="nav-item theme-text">
                        <a href="index.html" class="nav-link"> MAMAKRIAU </a>
                    </li>
                </ul>

                <ul class="list-unstyled menu-categories" id="topAccordion">
                    
                    <li class="menu single-menu active">
                        <a href="<?= base_url('member/profile') ?>" class="dropdown-toggle autodroprown">
                            <div class="">
                                <span>Profile</span>
                            </div>
                        </a>
                    </li>
                    <li class="menu single-menu active">
                        <a href="<?= base_url('member/brief') ?>" class="dropdown-toggle autodroprown">
                            <div class="">
                                <span>Brief</span>
                            </div>
                        </a>
                    </li>
                    <li class="menu single-menu active">
                        <a href="#dashboard" class="dropdown-toggle autodroprown">
                            <div class="">
                                <span>Files</span>
                            </div>
                        </a>
                    </li>
                    <li class="menu single-menu active">
                        <a href="<?= base_url('/member/messages') ?>" class="dropdown-toggle autodroprown">
                            <div class="">
                                <span>Messages</span>
                            </div>
                        </a>
                    </li>
                     <li class="menu single-menu active">
                        <a href="#dashboard" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle autodroprown">
                            <div class="">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus-circle"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="16"></line><line x1="8" y1="12" x2="16" y2="12"></line></svg>
                                <span>Add Project</span>
                            </div>
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-down"><polyline points="6 9 12 15 18 9"></polyline></svg>
                        </a>
                        <ul class="collapse submenu list-unstyled" id="dashboard" data-parent="#topAccordion">
                            <li>
                                <a href="<?= base_url('/member/project/logodesign') ?>"> Logo Design </a>
                            </li>
                            <li>
                                <a href="<?= base_url('/member/project/brandidentity') ?>"> Brand &amp; Identity </a>
                            </li>
                            <li>
                                <a href="<?= base_url('/member/project/webapp') ?>"> Web &amp; App </a>
                            </li>
                            <li>
                                <a href="<?= base_url('/member/project/nonprofit') ?>"> NonProfit Organization </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <!--  END TOPBAR  -->