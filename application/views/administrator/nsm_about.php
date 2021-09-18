    <div class="page-content">
		<nav class="page-breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="<?= base_url('administrator/about') ?>">About Pages</a></li>
			</ol>
		</nav>
        <div class="row">
          <?php $this->load->view('layouts/_alert'); ?>
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <?php foreach ($content as $row) : ?>
                <?= form_hidden('id', $row->id) ?>
                <h6 class="card-title"><?= $row->title ?></h6>
                  <div class="item">
                    <a href="<?= base_url("administrator/about/edit/$row->id") ?>">
                        <img src="<?= $row->image ? base_url("images/about/$row->image") : base_url("images/about/default.png") ?>" class="img-fluid" alt="<?= $row->title ?>">
                    </a>
                  </div>
                <?php endforeach ?>
              </div>
            </div>
          </div>
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <?php foreach ($content as $row) : ?>
                <?= form_hidden('id', $row->id) ?>
                <div class="min-height-200px">
				<div class="row">
				    <?php $no = 0; foreach ($content as $row) :  $no++; ?>
					<div class="col-xl-12 col-lg-4 col-md-4 col-sm-12 mb-30">
						<div class="pd-20 card-box height-100-p">
							<p class="text-center text-muted font-14"><?= $row->description ?></p>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue">Contact Information</h5>
								<ul>
								    <li>
										<span>Fonts Text:</span>
										<?= $row->font ?>
									</li>
									<li>
										<span>Size Box:</span>
										<?= $row->size ?>
									</li>
									<li>
										<span>URL Maps:</span>
										<?= $row->maps ?>
									</li>
								    <li>
										<span>Category:</span>
										<?= $row->category ?>
									</li>
									<li>
										<span>Address:</span>
										<?= $row->address ?>
									</li>
									<li>
										<span>Email Address:</span>
										<?= $row->email ?>
									</li>
									<li>
										<span>Phone Number:</span>
										<?= $row->phone ?>
									</li>
									<li>
										<span>Behance:</span>
										<?= $row->facebook ?>
									</li>
									<li>
										<span>Dribbble:</span>
										<?= $row->instagram ?>
									</li>
								</ul>
							</div>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue">Setting Page About</h5>
								<ul>
								    <li>
										<span>Title Color:</span>
										<?= $row->color1 ?>
									</li>
									<li>
										<span>Description Color:</span>
										<?= $row->color2 ?>
									</li>
									<li>
										<span>Title Icon Color:</span>
										<?= $row->color3 ?>
									</li>
									<li>
										<span>Description Icon Color:</span>
										<?= $row->color4 ?>
									</li>
									<li>
										<span>Size Box:</span>
										<?= $row->size ?>
									</li>
								</ul>
							</div>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue">Setting Page Services</h5>
								<ul>
								    <li>
										<span>Title Color:</span>
										<?= $row->colorservices1 ?>
									</li>
									<li>
										<span>Description Color:</span>
										<?= $row->colorservices2 ?>
									</li>
									<li>
										<span>Title Icon Color:</span>
										<?= $row->colorservices3 ?>
									</li>
									<li>
										<span>Description Icon Color:</span>
										<?= $row->colorservices4 ?>
									</li>
									<li>
										<span>Size Box:</span>
										<?= $row->sizeboxservices ?>
									</li>
									<li>
										<span>Text Type:</span>
										<?= $row->textalignservices ?>
									</li>
								</ul>
							</div>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue">Setting Page Team</h5>
								<ul>
								    <li>
										<span>Size Box:</span>
										<?= $row->sizeboxteam ?>
									</li>
								</ul>
							</div>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue">Setting All Page</h5>
								<ul>
								    <li>
										<span>Fonts Text:</span>
										<?= $row->font ?>
									</li>
								</ul>
							</div>
							<div class="profile-social">
								<h5 class="mb-20 h5 text-blue">Social Links</h5>
								<ul class="clearfix">
									<li><a href="<?= $row->facebook ?>" class="btn" data-bgcolor="#3b5998" data-color="#ffffff"><i class="fa fa-dribbble"></i></a></li>
									<li><a href="mailto:<?= $row->email ?>" class="btn" data-bgcolor="#1da1f2" data-color="#ffffff"><i class="fa fa-envelope"></i></a></li>
									<li><a href="<?= $row->instagram ?>" class="btn" data-bgcolor="#f46f30" data-color="#ffffff"><i class="fa fa-behance"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				    <?php endforeach ?>
				</div>
			</div>
                <?php endforeach ?>
              </div>
            </div>
          </div>
        </div>
	</div>