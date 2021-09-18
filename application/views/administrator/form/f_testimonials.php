            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/testimoials') ?>">Testimonials</a></li>
						<li class="breadcrumb-item active" aria-current="page">Create Testimonials</li>
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
										<label for="exampleInputText1">Full Name</label>
										<?= form_input('name', $input->name, ['class' => 'form-control']) ?>
										<?= form_error('name') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Title</label>
										<?= form_input('title', $input->title, ['class' => 'form-control']) ?>
										<?= form_error('title') ?>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Message</label>
										<?= form_textarea(['name' => 'message', 'value' => $input->message, 'row' => 4, 'class' => 'form-control']) ?>
										<?= form_error('message') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Photo Profile</label>
										<?= form_upload('image') ?>
										<?php if ($this->session->flashdata('image_error')) : ?>
										<small class="form-text text-danger"><?= $this->session->flashdata('image_error') ?></small>
										<?php endif ?>
										<?php if (isset($input->image)) : ?>
										<img src="<?= base_url("/images/testimonials/$input->image") ?>" alt="" height="150">
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