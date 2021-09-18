            <div class="page-content">

				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/category') ?>">Category</a></li>
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
                              <img src="<?= $row->image ? base_url("images/category/$row->image") : base_url("images/category/default.png") ?>" alt="<?= $row->title ?>">
                            </div>
                            <?php endforeach ?>
                          </div>
                        </div>
                      </div>
                    </div>      
					<div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
								<h6 class="card-title">Category Portfolio</h6>
								<a href="<?= base_url('administrator/category/create') ?>" class="btn btn-primary"><i data-feather="plus"></i> New Create</a>
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>#</th>
												<th>Background</th>
												<th>Title</th>
												<th>Slug</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
										    <?php $no = 0; foreach ($content as $row) : $no++; ?>
											<tr>
												<th><?= $no ?></th>
												<td>
												    <img src="<?= $row->image ? base_url("images/category/$row->image") : base_url("images/category/default.png") ?>"alt="<?= $row->title ?>" width="50px">
												</td>
												<td><?= $row->title ?></td>
												<td><?= $row->slug ?></td>
												<td>
                                                    <?= form_open("administrator/category/delete/$row->id", ['method' => 'POST']) ?>
                                                    <?= form_hidden('id', $row->id) ?>
                                                    <a href="<?= base_url("administrator/category/edit/$row->id") ?>" class="btn btn-primary"><i data-feather="edit"></i></a>
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