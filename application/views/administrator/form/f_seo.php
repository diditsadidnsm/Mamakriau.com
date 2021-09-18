            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/seo') ?>">Search Enginee Optimization</a></li>
						<li class="breadcrumb-item active" aria-current="page">Modify SEO</li>
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
										<?= form_input('title', $input->title, ['class' => 'form-control', 'required' => true, 'autofocus' => true]) ?>
										<?= form_error('title') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Site</label>
										<?= form_input('site', $input->site, ['class' => 'form-control']) ?>
										<?= form_error('site') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">URL Site</label>
										<?= form_input('url', $input->url, ['class' => 'form-control']) ?>
										<?= form_error('url') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Type Site</label>
										<?= form_input('type', $input->type, ['class' => 'form-control']) ?>
										<?= form_error('type') ?>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Description</label>
										<?= form_textarea(['name' => 'description', 'value' => $input->description, 'row' => 4, 'class' => 'form-control']) ?>
										<?= form_error('description') ?>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Keyword</label>
										<?= form_textarea(['name' => 'keyword', 'value' => $input->keyword, 'row' => 4, 'class' => 'form-control']) ?>
										<?= form_error('keyword') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Favicon</label>
										<?= form_upload('image') ?>
										<?php if ($this->session->flashdata('image_error')) : ?>
										<small class="form-text text-danger"><?= $this->session->flashdata('image_error') ?></small>
										<?php endif ?>
										<?php if (isset($input->image)) : ?>
										<img src="<?= base_url("/images/seo/$input->image") ?>" alt="" height="150">
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