            <div class="page-content">

				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/user') ?>">Users</a></li>
					</ol>
				</nav>

				<div class="row">
				    <?php $this->load->view('layouts/_alert'); ?>     
					<div class="col-md-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
								<h6 class="card-title">Users</h6>
								<!--<a href="<?= base_url('administrator/user/create') ?>" class="btn btn-primary"><i data-feather="plus"></i> Create User</a>-->
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th>#</th>
												<th>Fullname</th>
												<th>Email</th>
												<th>Password</th>
												<th>Role</th>
												<th>Status</th>
												<!--<th>Action</th>-->
											</tr>
										</thead>
										<tbody>
										    <?php $no = 0; foreach ($content as $row) : $no++; ?>
											<tr>
												<th><?= $no ?></th>
												<td>
												    <img src="<?= $row->image ? base_url("images/user/$row->image") : base_url("images/user/monet.jpg") ?>"alt="<?= $row->name ?>" width="50px">
												     &nbsp;&nbsp;<?= $row->name ?>
												</td>
												<td><?= $row->email ?></td>
												<td>Hidden :)</td>
												<td><?= $row->role ?></td>
												<td><?= $row->is_active ? '<span class="badge badge-success">Activated</span>' : '<span class="badge badge-danger">Not Activated</span>' ?></td>
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