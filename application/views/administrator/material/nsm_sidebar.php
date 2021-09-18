    <nav class="sidebar">
      <div class="sidebar-header">
        <a href="#" class="sidebar-brand">
          <?php foreach (getLogo() as $logo) : ?>
            <img src="<?= base_url(); ?>/images/logo/<?= $logo->image ?>" alt="<?= $logo->title ?>" class="img-fluid" width="160">
          <?php endforeach ?>
        </a>
        <div class="sidebar-toggler not-active">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
      <div class="sidebar-body">
        <ul class="nav">
          <li class="nav-item nav-category">Main</li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/dashboard') ?>" class="nav-link">
              <i class="link-icon" data-feather="box"></i>
              <span class="link-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#portfolio" role="button" aria-expanded="false" aria-controls="portfolio">
              <i class="link-icon" data-feather="inbox"></i>
              <span class="link-title">Portfolio</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse" id="portfolio">
              <ul class="nav sub-menu">
                <li class="nav-item">
                  <a href="<?= base_url('administrator/category') ?>" class="nav-link">Category</a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('administrator/detail') ?>" class="nav-link">Detail</a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('administrator/mockup') ?>" class="nav-link">Mockup</a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('administrator/product') ?>" class="nav-link">Primary</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#blogs" role="button" aria-expanded="false" aria-controls="portfolio">
              <i class="link-icon" data-feather="book"></i>
              <span class="link-title">Blogs</span>
              <i class="link-arrow" data-feather="chevron-down"></i>
            </a>
            <div class="collapse" id="blogs">
              <ul class="nav sub-menu">
                <li class="nav-item">
                  <a href="<?= base_url('administrator/kategori') ?>" class="nav-link">Category</a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('administrator/book') ?>" class="nav-link">Primary</a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('administrator/gallery') ?>" class="nav-link">Gallery</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item nav-category">Root</li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/user') ?>" class="nav-link">
              <i class="link-icon" data-feather="users"></i>
              <span class="link-title">Users</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/project') ?>" class="nav-link">
              <i class="link-icon" data-feather="users"></i>
              <span class="link-title">Projects</span>
            </a>
          </li>
          <li class="nav-item nav-category">Front Page</li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/navbar') ?>" class="nav-link">
              <i class="link-icon" data-feather="navigation"></i>
              <span class="link-title">Navigation</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/banner') ?>" class="nav-link">
              <i class="link-icon" data-feather="monitor"></i>
              <span class="link-title">Banner Slide</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/word') ?>" class="nav-link">
              <i class="link-icon" data-feather="shuffle"></i>
              <span class="link-title">Introduction</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/team') ?>" class="nav-link">
              <i class="link-icon" data-feather="users"></i>
              <span class="link-title">My Team</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/support') ?>" class="nav-link">
              <i class="link-icon" data-feather="user-check"></i>
              <span class="link-title">Supported</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/author') ?>" class="nav-link">
              <i class="link-icon" data-feather="user-plus"></i>
              <span class="link-title">Testimonials</span>
            </a>
          </li>
          <li class="nav-item nav-category">Get Design Page</li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/dbanner') ?>" class="nav-link">
              <i class="link-icon" data-feather="monitor"></i>
              <span class="link-title">Banner Slide</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/dstep') ?>" class="nav-link">
              <i class="link-icon" data-feather="list"></i>
              <span class="link-title">How It Works</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/dwhy') ?>" class="nav-link">
              <i class="link-icon" data-feather="shuffle"></i>
              <span class="link-title">Why We</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/services') ?>" class="nav-link">
              <i class="link-icon" data-feather="sunset"></i>
              <span class="link-title">Design Services</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/Testimonials') ?>" class="nav-link">
              <i class="link-icon" data-feather="sunset"></i>
              <span class="link-title">Testimonials Services</span>
            </a>
          </li>
          <!--<li class="nav-item">-->
          <!--  <a class="nav-link" data-toggle="collapse" href="#brief" role="button" aria-expanded="false" aria-controls="brief">-->
          <!--    <i class="link-icon" data-feather="home"></i>-->
          <!--    <span class="link-title">Service</span>-->
          <!--    <i class="link-arrow" data-feather="chevron-down"></i>-->
          <!--  </a>-->
          <!--  <div class="collapse" id="brief">-->
          <!--    <ul class="nav sub-menu">-->
                <!--<li class="nav-item">-->
                <!--  <a href="<?= base_url('administrator/brief') ?>" class="nav-link">Banner</a>-->
                <!--</li>-->
          <!--      <li class="nav-item">-->
          <!--        <a href="<?= base_url('administrator/form') ?>" class="nav-link">Services</a>-->
          <!--      </li>-->
          <!--      <li class="nav-item">-->
          <!--        <a href="<?= base_url('administrator/promote') ?>" class="nav-link">Promote</a>-->
          <!--      </li>-->
          <!--    </ul>-->
          <!--  </div>-->
          <!--</li>-->
          <!--<li class="nav-item">-->
          <!--  <a class="nav-link" data-toggle="collapse" href="#form" role="button" aria-expanded="false" aria-controls="form">-->
          <!--    <i class="link-icon" data-feather="list"></i>-->
          <!--    <span class="link-title">Brief Form</span>-->
          <!--    <i class="link-arrow" data-feather="chevron-down"></i>-->
          <!--  </a>-->
          <!--  <div class="collapse" id="form">-->
          <!--    <ul class="nav sub-menu">-->
          <!--      <li class="nav-item">-->
          <!--        <a href="<?= base_url('administrator/country') ?>" class="nav-link">Code Country</a>-->
          <!--      </li>-->
          <!--      <li class="nav-item">-->
          <!--        <a href="<?= base_url('administrator/industry') ?>" class="nav-link">Industry</a>-->
          <!--      </li>-->
          <!--    </ul>-->
          <!--  </div>-->
          <!--</li>-->
          <li class="nav-item nav-category">Additional Page</li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/about') ?>" class="nav-link">
              <i class="link-icon" data-feather="sidebar"></i>
              <span class="link-title">About Page</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/icon') ?>" class="nav-link">
              <i class="link-icon" data-feather="github"></i>
              <span class="link-title">Icons</span>
            </a>
          </li>
          <li class="nav-item nav-category">Setting Website</li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/logo') ?>" class="nav-link">
              <i class="link-icon" data-feather="flag"></i>
              <span class="link-title">Logo Website</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/seo') ?>" class="nav-link">
              <i class="link-icon" data-feather="chrome"></i>
              <span class="link-title">SEO Website</span>
            </a>
          </li>
          <li class="nav-item nav-category">Add Ons</li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/calendar') ?>" class="nav-link">
              <i class="link-icon" data-feather="calendar"></i>
              <span class="link-title">Calendar</span>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?= base_url('administrator/contact') ?>" class="nav-link">
              <i class="link-icon" data-feather="refresh-ccw"></i>
              <span class="link-title">Contact Page</span>
            </a>
          </li>
        </ul>
      </div>
    </nav>
    