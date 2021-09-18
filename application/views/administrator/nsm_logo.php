    <div class="page-content">
		<nav class="page-breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="<?= base_url('administrator/logo') ?>">Logo Website</a></li>
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
                <a href="<?= base_url("administrator/logo/edit/$row->id") ?>"><i data-feather="edit-3"></i></a>
                  <div class="item">
                    <img src="<?= $row->image ? base_url("images/logo/$row->image") : base_url("images/logo/default.png") ?>" class="img-fluid" alt="<?= $row->title ?>">
                  </div>
                <?php endforeach ?>
              </div>
            </div>
          </div>
        </div>
	</div>