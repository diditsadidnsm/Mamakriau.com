    <div class="page-content">
		<nav class="page-breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="<?= base_url('administrator/word') ?>">Introduction</a></li>
			</ol>
		</nav>
        <div class="row">
          <?php $this->load->view('layouts/_alert'); ?>
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h6 class="card-title">Background Perview</h6>
                  <?php foreach ($content as $row) : ?>
                  <div class="item">
                    <img src="<?= $row->image ? base_url("images/word/$row->image") : base_url("images/word/default.png") ?>" class="img-fluid" alt="<?= $row->title ?>">
                  </div>
                  <?php endforeach ?>
              </div>
            </div>
          </div>
          <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
					<div class="table-responsive">
						<table class="table table-hover">
							<tbody>
								<?php foreach ($content as $row) : ?>
								<tr>
									<td><?= $row->title ?></td>
									<td><?= $row->size ?></td>
									<td>
                                        <?= form_hidden('id', $row->id) ?>
                                        <a href="<?= base_url("administrator/word/edit/$row->id") ?>" class="btn btn-warning"><i data-feather="edit"></i></a>
                                        <?= form_close() ?>
									</td>
								</tr>
								<?php endforeach ?>
							</tbody>
						</table>
					</div>
                </div>
            </div>
		  </div>
        </div>
	</div>