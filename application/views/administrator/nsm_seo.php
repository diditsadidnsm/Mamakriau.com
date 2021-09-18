            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('seo') ?>">Search Enginee Optimization</a></li>
					</ol>
				</nav>
				<div class="row">
				    <?php $this->load->view('layouts/_alert'); ?>
				    <?php foreach ($content as $row) : ?>
					<div class="col-md-12">
                        <div class="card">
                          <div class="card-body">
                            <div class="container-fluid d-flex justify-content-between">
                              <div class="col-lg-12 pl-0">
                                <?= form_hidden('id', $row->id) ?>
                                <a href="<?= base_url("administrator/seo/edit/$row->id") ?>" class="noble-ui-logo logo-light d-block mt-3"><img src="<?= $row->image ? base_url("images/seo/$row->image") : base_url("images/seo/default.png") ?>" class="img-fluid" width="200"></a>                 
                                <p class="mt-1 mb-1"><b><?= $row->title ?> | <?= $row->site ?></b></p>
                                <p><?= $row->url ?></p>
                                <h5 class="mt-5 mb-2 text-muted">Type :</h5>
                                <p><?= $row->type ?></p>
                                <h5 class="mt-5 mb-2 text-muted">Description :</h5>
                                <p><?= $row->description ?></p>
                                <h5 class="mt-5 mb-2 text-muted">Keyword :</h5>
                                <p><?= $row->keyword ?></p>
                              </div>
                            </div>
                          </div>
                        </div>
					</div>
					<?php endforeach ?>
				</div>
			</div>