<div class="page-content">

				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/gallery') ?>">My Gallery</a></li>
					</ol>
				</nav>

				<div class="row">
				    <?php $this->load->view('layouts/_alert'); ?>
					<div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <h4 class="text-center mb-3 mt-4">My Gallery List</h4>
                <p class="text-muted text-center mb-4 pb-2"><a href="<?= base_url('administrator/gallery/create') ?>" class="btn btn-primary"><i data-feather="plus"></i> Add New gallery</a></p>
                <div class="container">  
                  <div class="row">
                    <?php foreach ($content as $row) : ?>
                    <div class="col-md-4 stretch-card grid-margin grid-margin-md-0">
                      <div class="card">
                        <div class="card-body">
                          <h5 class="text-center text-uppercase mt-3 mb-4"><?= $row->name ?></h5>
                          <img src="<?= $row->image ? base_url("images/gallery/$row->image") : base_url("images/gallery/default.png") ?>" class="img-fluid" alt="<?= $row->title ?>">
                          <?= form_open("administrator/gallery/delete/$row->id", ['method' => 'POST']) ?>
                          <?= form_hidden('id', $row->id) ?>
                          <a href="<?= base_url("administrator/gallery/edit/$row->id") ?>" class="btn btn-warning d-block mx-auto mt-4"><i data-feather="edit-3"></i></a>
                          <button class="btn btn-danger btn-block d-block mx-auto mt-4" onclick="return confirm('Apakah yakin ingin menghapus?')"><i data-feather="trash"></i></button>
                          <?= form_close() ?>
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
			</div>