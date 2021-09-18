            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/banner') ?>">Banner Website</a></li>
						<li class="breadcrumb-item active" aria-current="page">Create Banner</li>
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
										<label for="exampleInputText1">Title</label>
										<?= form_input('title', $input->title, ['class' => 'form-control', 'autofocus' => true]) ?>
										<?= form_error('title') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Sub</label>
										<?= form_input('title2', $input->title2, ['class' => 'form-control']) ?>
										<?= form_error('title2') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Size Text</label>
										<?= form_input('size', $input->size, ['class' => 'form-control']) ?>
										<?= form_error('size') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">URL</label>
										<?= form_input('url', $input->url, ['class' => 'form-control']) ?>
										<?= form_error('url') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Images</label>
										<br />
										<?= form_upload('image') ?>
										<?php if ($this->session->flashdata('image_error')) : ?>
										<small class="form-text text-danger"><?= $this->session->flashdata('image_error') ?></small>
										<?php endif ?>
										<?php if (isset($input->image)) : ?>
										<img src="<?= base_url("/images/banner/$input->image") ?>" alt="" height="150">
										<?php endif ?>
										<?= form_error('image') ?>
									</div>
									<button class="btn btn-primary" type="submit">Create Now</button>
								    &nbsp;&nbsp;&nbsp;
								    <a href="javascript:window.history.go(-1)" class="btn btn-danger">Cancel</a>
								<?= form_close() ?>
							</div>
						</div>
					</div>
				</div>
			</div>