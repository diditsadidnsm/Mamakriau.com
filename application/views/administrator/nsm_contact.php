    <div class="page-content">
		<nav class="page-breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="<?= base_url('administrator/contact') ?>">Contact Page</a></li>
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
                    <a href="<?= base_url("administrator/contact/edit/$row->id") ?>">
                        <img src="<?= $row->image ? base_url("images/contact/$row->image") : base_url("images/contact/default.png") ?>" class="img-fluid" alt="<?= $row->title ?>">
                    </a>
                  </div>
                <?php endforeach ?>
              </div>
            </div>
          </div>
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <div class="min-height-200px">
				<div class="row">
				    <?php foreach ($content as $row) : ?>
					<div class="col-xl-12 col-lg-4 col-md-4 col-sm-12 mb-30">
						<div class="pd-20 card-box height-100-p">
							<p class="text-center text-muted font-14"><?= $row->description ?></p>
							<div class="profile-info">
								<h5 class="mb-20 h5 text-blue"><?= $row->title ?></h5>
							</div>
						</div>
					</div>
				    <?php endforeach ?>
				</div>
              </div>
            </div>
          </div>
        </div>
	</div>