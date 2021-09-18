            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/team') ?>">My Team</a></li>
						<li class="breadcrumb-item active" aria-current="page">Create New Team</li>
					</ol>
				</nav>
				<div class="row">
					<div class="col-md-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title">Inputs</h6>
								<?= form_open_multipart($form_action, ['method' => 'POST']) ?>
                                <?= isset($input->id) ? form_hidden('id', $input->id) : '' ?>
									<div class="form-group">
										<label for="exampleInputText1">Name</label>
										<?= form_input('name', $input->name, ['class' => 'form-control', 'required' => true, 'autofocus' => true]) ?>
										<?= form_error('name') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Title</label>
										<?= form_input('title', $input->title, ['class' => 'form-control']) ?>
										<?= form_error('title') ?>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Description</label>
										<?= form_textarea(['name' => 'description', 'value' => $input->description, 'row' => 4, 'class' => 'form-control']) ?>
										<?= form_error('description') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Link Facebook</label>
										<?= form_input('facebook', $input->facebook, ['class' => 'form-control']) ?>
										<?= form_error('facebook') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Link Instagram</label>
										<?= form_input('instagram', $input->instagram, ['class' => 'form-control']) ?>
										<?= form_error('instagram') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Link Linkedin</label>
										<?= form_input('linkedin', $input->linkedin, ['class' => 'form-control']) ?>
										<?= form_error('linkedin') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Picture</label>
										<?= form_upload('image') ?>
										<?php if ($this->session->flashdata('image_error')) : ?>
										<small class="form-text text-danger"><?= $this->session->flashdata('image_error') ?></small>
										<?php endif ?>
										<?php if (isset($input->image)) : ?>
										<img src="<?= base_url("/images/team/$input->image") ?>" alt="" height="150">
										<?php endif ?>
										<?= form_error('image') ?>
									</div>
									<button class="btn btn-primary" type="submit">Create Now</button>
									<button onclick="goBack()" class="btn btn-danger">Cancel</button>
								<?= form_close() ?>
							</div>
						</div>
					</div>
				</div>
			</div>