            <div class="page-content">

				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/mockup') ?>">Mockup</a></li>
					</ol>
				</nav>

				<div class="row">
				    <?php $this->load->view('layouts/_alert'); ?>
				    <div class="col-md-12 grid-margin stretch-card">
                      <div class="card">
                        <div class="card-body">
                          <h6 class="card-title">My Gallery</h6>
                          <div class="owl-carousel owl-theme owl-auto-play">
                            <?php foreach ($content as $row) : ?>
                            <div class="item">
                              <img src="<?= $row->image ? base_url("images/mockup/$row->image") : base_url("images/mockup/default.png") ?>" alt="<?= $row->title ?>">
                            </div>
                            <?php endforeach ?>
                          </div>
                        </div>
                      </div>
                    </div>      
					<div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
								<h6 class="card-title">Mockup Portfolio</h6>
								<a href="<?= base_url('administrator/mockup/create') ?>" class="btn btn-primary"><i data-feather="plus"></i> New Create</a>
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>#</th>
												<th>Images</th>
												<th>Title</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
										    <?php $no = 0; foreach ($content as $row) : $no++; ?>
											<tr>
												<th><?= $no ?></th>
												<td>
												    <img src="<?= $row->image ? base_url("images/mockup/$row->image") : base_url("images/mockup/default.png") ?>"alt="<?= $row->title ?>" width="50px">
												</td>
												<td><?= $row->title ?></td>
												<td>
                                                    <?= form_open("administrator/mockup/delete/$row->id", ['method' => 'POST']) ?>
                                                    <?= form_hidden('id', $row->id) ?>
                                                    <a href="<?= base_url("administrator/mockup/edit/$row->id") ?>" class="btn btn-primary"><i data-feather="edit"></i></a>
                                                    &nbsp;&nbsp;
                                                    <button class="btn btn-danger" onclick="return confirm('Apakah yakin ingin menghapus?')"><i data-feather="trash"></i></button>
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