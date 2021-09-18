            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/profile') ?>">Profile</a></li>
						<li class="breadcrumb-item active" aria-current="page">Edit</li>
					</ol>
				</nav>
				<div class="row">
					<div class="col-lg-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Edit Profile</h4>
								<?= form_open_multipart($form_action, ['method' => 'POST']) ?>
						        <?= isset($input->id) ? form_hidden('id', $input->id) : '' ?>
								<div class="form-group row">
									<div class="col-lg-3">
										<label class="col-form-label">Your name</label>
									</div>
									<div class="col-lg-8">
										<?= form_input('name', $input->name, ['class' => 'form-control', 'required' => true, 'autofocus' => true]) ?>
							            <?= form_error('name') ?>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-lg-3">
										<label class="col-form-label">Email Address</label>
									</div>
									<div class="col-lg-8">
										<?= form_input(['type' => 'email', 'name' => 'email', 'value' => $input->email, 'class' => 'form-control', 'placeholder' => 'Masukkan alamat email aktif', 'required' => true]) ?>
							            <?= form_error('email') ?>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-lg-3">
										<label class="col-form-label">Password</label>
									</div>
									<div class="col-lg-8">
										<?= form_password('password', '', ['class' => 'form-control', 'placeholder' => 'Masukkan password minimal 8 karakter']) ?>
							            <?= form_error('password') ?>
									</div>
								</div>
								<div class="form-group mb-0 row">
									<div class="col-lg-3">
										<?php if (isset($input->image)): ?>
								            <img src="<?= base_url("/images/user/$input->image") ?>" alt="" height="80">
							            <?php endif ?> 
									</div>
									<div class="col-lg-8">
										<?= form_upload('image') ?>
							            <?php if ($this->session->flashdata('image_error')) : ?>
								            <small class="form-text text-danger"><?= $this->session->flashdata('image_error') ?></small>
							            <?php endif ?>
									</div>
								</div>
								<div class="form-group mb-0 row">
								    <div class="col-lg-3">
								        <!--...-->
								    </div>
								    <div class="col-lg-8">
								         <button type="submit" class="btn btn-primary">Edit My Profile</button>
								         <button onclick="goBack()" class="btn btn-danger">Back My Profile</button>
								    </div>
								</div>
								<?= form_close() ?>
							</div>
						</div>
					</div>
				</div>
			</div>