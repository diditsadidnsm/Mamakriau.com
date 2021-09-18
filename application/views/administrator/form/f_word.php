            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/word') ?>">Introduction</a></li>
						<li class="breadcrumb-item active" aria-current="page">Edit Introduction</li>
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
										<?= form_textarea(['name' => 'title', 'id' => 'title', 'value' => $input->title, 'row' => 4, 'class' => 'form-control']) ?>
										<?= form_error('title') ?>
									</div>
									<script>
                                        CKEDITOR.replace( 'title' );
                                    </script>
									<div class="form-group">
										<label for="exampleInputText1">Size</label>
										<?= form_input('size', $input->size, ['class' => 'form-control', 'type' => 'number']) ?>
										<?= form_error('size') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Images</label>
										<?= form_upload('image') ?>
										<?php if ($this->session->flashdata('image_error')) : ?>
										<small class="form-text text-danger"><?= $this->session->flashdata('image_error') ?></small>
										<?php endif ?>
										<?php if (isset($input->image)) : ?>
										<img src="<?= base_url("/images/word/$input->image") ?>" alt="" width="400" height="150">
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