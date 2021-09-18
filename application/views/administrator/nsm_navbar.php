            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/navbar') ?>">Navigation</a></li>
					</ol>
				</nav>
				<div class="row">
				    <?php $this->load->view('layouts/_alert'); ?>
					<div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
								<h6 class="card-title">Navigation Website</h6>
								<a href="<?= base_url('administrator/navbar/create') ?>" class="btn btn-primary"><i data-feather="plus"></i> New Create</a>
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>#</th>
												<th>Title</th>
												<th>Color</th>
												<th>URL</th>
												<th>Background</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
										    <?php $no = 0; foreach ($content as $row) : $no++; ?>
											<tr>
												<th><?= $no ?></th>
												<td><?= $row->title ?></td>
												<td><?= $row->color ?></td>
												<td><?= $row->url ?></td>
												<td>
												    <img src="<?= $row->image ? base_url("images/navbar/$row->image") : base_url("images/navbar/default.png") ?>"alt="No Images" width="50px">
												</td>
												<td>
                                                    <?= form_open("administrator/navbar/delete/$row->id", ['method' => 'POST']) ?>
                                                    <?= form_hidden('id', $row->id) ?>
                                                    <a href="<?= base_url("administrator/navbar/edit/$row->id") ?>" class="btn btn-warning"><i data-feather="edit"></i></a>
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