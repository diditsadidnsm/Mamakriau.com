<div class="page-content">

				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/team') ?>">My Team</a></li>
					</ol>
				</nav>

				<div class="row">
				    <?php $this->load->view('layouts/_alert'); ?>
					<div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <h4 class="text-center mb-3 mt-4">My Team List</h4>
                <p class="text-muted text-center mb-4 pb-2"><a href="<?= base_url('administrator/team/create') ?>" class="btn btn-primary"><i data-feather="user-plus"></i> Add New Team</a></p>
                <div class="container">  
                  <div class="row">
                    <?php foreach ($content as $row) : ?>
                    <div class="col-md-4 stretch-card grid-margin grid-margin-md-0">
                      <div class="card">
                        <div class="card-body">
                          <h5 class="text-center text-uppercase mt-3 mb-4"><?= $row->name ?></h5>
                          <img src="<?= $row->image ? base_url("images/team/$row->image") : base_url("images/team/default.png") ?>" class="img-fluid" alt="<?= $row->name ?>">
                          <p class="text-muted text-center mb-4 font-weight-light"></p>
                          <h6 class="text-muted text-center mb-4 font-weight-normal"><?= $row->title ?></h6>
                          <div class="d-flex align-items-center mb-2">
                            <i data-feather="facebook" class="icon-md text-primary mr-2"></i>
                            <p><?= $row->facebook ?></p>
                          </div>
                          <div class="d-flex align-items-center mb-2">
                            <i data-feather="instagram" class="icon-md text-primary mr-2"></i>
                            <p><?= $row->instagram ?></p>
                          </div>
                          <div class="d-flex align-items-center mb-2">
                            <i data-feather="linkedin" class="icon-md text-primary mr-2"></i>
                            <p><?= $row->linkedin ?></p>
                          </div>
                          <?= form_open("administrator/team/delete/$row->id", ['method' => 'POST']) ?>
                          <?= form_hidden('id', $row->id) ?>
                          <a href="<?= base_url("administrator/team/edit/$row->id") ?>" class="btn btn-warning d-block mx-auto mt-4"><i data-feather="edit-3"></i></a>
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



 <!--   <div class="page-content">-->
	<!--	<nav class="page-breadcrumb">-->
	<!--		<ol class="breadcrumb">-->
	<!--			<li class="breadcrumb-item"><a href="<?= base_url('administrator/team') ?>">My team</a></li>-->
	<!--		</ol>-->
	<!--	</nav>-->
 <!--       <div class="row">-->
 <!--         <?php $this->load->view('layouts/_alert'); ?>-->
 <!--         <div class="col-md-12 grid-margin stretch-card">-->
 <!--           <div class="card">-->
 <!--             <div class="card-body">-->
 <!--               <h6 class="card-title">My Gallery</h6>-->
 <!--               <div class="owl-carousel owl-theme owl-auto-play">-->
 <!--                 <?php foreach ($content as $row) : ?>-->
 <!--                 <div class="item">-->
 <!--                   <img src="<?= $row->image ? base_url("images/team/$row->image") : base_url("images/team/default.png") ?>" alt="<?= $row->name ?>">-->
 <!--                 </div>-->
 <!--                 <?php endforeach ?>-->
 <!--               </div>-->
 <!--             </div>-->
 <!--           </div>-->
 <!--         </div>-->
 <!--         <div class="col-md-12 grid-margin stretch-card">-->
 <!--           <div class="card">-->
 <!--               <div class="card-body">-->
	<!--				<h6 class="card-title">My Team List</h6>-->
	<!--				<a href="<?= base_url('administrator/team/create') ?>" class="btn btn-primary"><i data-feather="plus"></i> New Create</a>-->
	<!--				<div class="table-responsive">-->
	<!--					<table class="table table-hover">-->
	<!--						<thead>-->
	<!--							<tr>-->
	<!--								<th>#</th>-->
	<!--								<th>Picture</th>-->
	<!--								<th>Name</th>-->
	<!--								<th>Title</th>-->
	<!--								<th>Facebook</th>-->
	<!--								<th>Instagram</th>-->
	<!--								<th>Linkedin</th>-->
	<!--								<th>Action</th>-->
	<!--							</tr>-->
	<!--						</thead>-->
	<!--						<tbody>-->
	<!--							<?php $no = 0; foreach ($content as $row) : $no++; ?>-->
	<!--							<tr>-->
	<!--								<th><?= $no ?></th>-->
	<!--								<td>-->
	<!--									<img src="<?= $row->image ? base_url("images/team/$row->image") : base_url("images/team/default.png") ?>"alt="<?= $row->name ?>">-->
	<!--								</td>-->
	<!--								<td><?= $row->name ?></td>-->
	<!--								<td>-->
	<!--								    <span class="badge badge-danger"><i class="fa fa-tags"></i> <?= $row->title ?></span>-->
	<!--								</td>-->
	<!--								<td><?= $row->facebook ?></td>-->
	<!--								<td><?= $row->instagram ?></td>-->
	<!--								<td><?= $row->linkedin ?></td>-->
	<!--								<td>-->
 <!--                                       <?= form_open("administrator/team/delete/$row->id", ['method' => 'POST']) ?>-->
 <!--                                       <?= form_hidden('id', $row->id) ?>-->
 <!--                                       <a href="<?= base_url("administrator/team/edit/$row->id") ?>" class="btn btn-warning"><i data-feather="edit"></i></a>-->
 <!--                                       <button class="btn btn-danger" onclick="return confirm('Apakah yakin ingin menghapus?')"><i data-feather="trash"></i></button>-->
 <!--                                       <?= form_close() ?>-->
	<!--								</td>-->
	<!--							</tr>-->
	<!--							<?php endforeach ?>-->
	<!--						</tbody>-->
	<!--					</table>-->
	<!--				</div>-->
 <!--               </div>-->
 <!--           </div>-->
	<!--	  </div>-->
 <!--       </div>-->
	<!--</div>-->