            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/book') ?>">Blogs</a></li>
						<li class="breadcrumb-item active" aria-current="page">Create Artikel</li>
					</ol>
				</nav>
				<div class="row">
					<div class="col-md-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title">Inputs</h6>
								<?= form_open_multipart($form_action, ['method' => 'POST']) ?>
                                <?= isset($input->id) ? form_hidden('id', $input->id) : '' ?>
                                <?= form_input(['type' => 'hidden', 'name' => 'writer', 'value' => $this->session->userdata('name'), 'class' => 'form-control']) ?>
									<div class="form-group">
										<label for="exampleInputText1">Title</label>
										<?= form_input('title', $input->title, ['class' => 'form-control', 'required' => true, 'autofocus' => true]) ?>
										<?= form_error('title') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Slug</label>
										<?= form_input('slug', $input->slug, ['class' => 'form-control', 'required' => true]) ?>
										<?= form_error('slug') ?>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Artikel</label>
										<?= form_textarea(['name' => 'description', 'id' => 'description', 'value' => $input->description, 'row' => 4, 'class' => 'form-control']) ?>
										<?= form_error('description') ?>
									</div>
									<script>
                                        CKEDITOR.replace( 'description' );
                                    </script>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Category</label>
										<?= form_dropdown('id_kategori', getDropdownList('kategori', ['id', 'title']), $input->id_kategori, ['class' => 'form-control']) ?>
                                        <?= form_error('id_kategori') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Images</label>
										<br />
										<?= form_upload('image') ?>
										<?php if ($this->session->flashdata('image_error')) : ?>
										<small class="form-text text-danger"><?= $this->session->flashdata('image_error') ?></small>
										<?php endif ?>
										<?php if (isset($input->image)) : ?>
										<img src="<?= base_url("/images/blog/$input->image") ?>" alt="" height="150">
										<?php endif ?>
										<?= form_error('image') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Alt Image</label>
										<?= form_input('alt', $input->alt, ['class' => 'form-control']) ?>
										<?= form_error('alt') ?>
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