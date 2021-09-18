            <div class="page-content">

				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/project') ?>">Projects</a></li>
					</ol>
				</nav>

				<div class="row">
				    <?php $this->load->view('layouts/_alert'); ?>     
					<div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
								<h6 class="card-title">Project List</h6>
								<!--<a href="<?= base_url('administrator/user/create') ?>" class="btn btn-primary"><i data-feather="plus"></i> Create User</a>-->
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>No. Invoice</th>
												<th>Project Name</th>
												<th>Service Name</th>
												<th>Corporate Name</th>
												<th>Industry</th>
												<th>Client Name</th>
												<th>Status</th>
												<!--<th>Action</th>-->
											</tr>
										</thead>
										<tbody>
										    <?php $no = 0; foreach ($content as $row) : $no++; ?>
											<tr>
												<th><a href="#!">#<?= $row->no_invoice ?></a></th>
												<td><?= $row->project_name ?></td>
												<td><?= $row->service_title ?></td>
												<td><?= $row->name_corporate ?></td>
												<td><?= $row->industry_title ?></td>
												<td><?= $row->user_name ?></td>
												
												<?php if ($row->is_status == 1) : ?>
												<td><span class="badge badge-danger">PENDING</span></td>
												<?php endif ?>
												
												<?php if ($row->is_status == 0) : ?>
												<td><span class="badge badge-warning">ON PROGRESS</span></td>
												<?php endif ?>
												
												<?php if ($row->is_status == 2) : ?>
												<td><span class="badge badge-success">FINISHED</span></td>
												<?php endif ?>
												
												<!--<td>-->
            <!--                                        <?= form_open("administrator/user/delete/$row->id", ['method' => 'POST']) ?>-->
            <!--                                        <?= form_hidden('id', $row->id) ?>-->
            <!--                                        <a href="<?= base_url("administrator/user/edit/$row->id") ?>" class="btn btn-primary"><i data-feather="edit"></i></a>-->
            <!--                                        <button class="btn btn-danger" onclick="return confirm('Apakah yakin ingin menghapus?')"><i data-feather="trash"></i></button>-->
            <!--                                        <?= form_close() ?>-->
												<!--</td>-->
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