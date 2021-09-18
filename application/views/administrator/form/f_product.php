            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/product') ?>">Portfolio</a></li>
						<li class="breadcrumb-item active" aria-current="page">Create Portfolio</li>
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
										<label for="exampleInputText1">Slug</label>
										<?= form_input('slug', $input->slug, ['class' => 'form-control', 'required' => true]) ?>
										<?= form_error('slug') ?>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Description</label>
										<?= form_textarea(['name' => 'description', 'value' => $input->description, 'row' => 4, 'class' => 'form-control']) ?>
										<?= form_error('description') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Client</label>
										<?= form_input('client', $input->client, ['class' => 'form-control', 'required' => true]) ?>
										<?= form_error('client') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Link Client</label>
										<?= form_input('url', $input->url, ['class' => 'form-control']) ?>
										<?= form_error('url') ?>
									</div>
									<div class="form-group">
									    <div class="form-check form-check-inline">
										    <label class="form-check-label">
											    <?= form_radio(['name' => 'is_available', 'value' => 1, 'checked' => $input->is_available == 1 ? true : false, 'form-check-input']) ?>
											    Ready
										    </label>
									    </div>
									    <div class="form-check form-check-inline">
										    <label class="form-check-label">
											    <?= form_radio(['name' => 'is_available', 'value' => 0, 'checked' => $input->is_available == 0 ? true : false, 'form-check-input']) ?>
											    Empty
										    </label>
										    <?= form_error('is_available') ?>
									    </div>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Category</label>
										<?= form_dropdown('id_category', getDropdownList('category', ['id', 'title']), $input->id_category, ['class' => 'form-control']) ?>
                                        <?= form_error('id_category') ?>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Mockup</label>
										<?= form_dropdown('id_mockup', getDropdownList('mockup', ['id', 'title']), $input->id_mockup, ['class' => 'form-control']) ?>
                                        <?= form_error('id_mockup') ?>
									</div>
									<div class="form-group">
										<label for="exampleFormControlTextarea1">Detail Portfolio</label>
										<?= form_dropdown('id_detail', getDropdownList('detail', ['id', 'title']), $input->id_detail, ['class' => 'form-control']) ?>
                                        <?= form_error('id_detail') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Finished Date</label>
										<?= form_input('date', $input->date, ['class' => 'form-control', 'required' => true]) ?>
										<?= form_error('date') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Images</label>
										<?= form_upload('image') ?>
										<?php if ($this->session->flashdata('image_error')) : ?>
										<small class="form-text text-danger"><?= $this->session->flashdata('image_error') ?></small>
										<?php endif ?>
										<?php if (isset($input->image)) : ?>
										<img src="<?= base_url("/images/product/$input->image") ?>" alt="" height="150">
										<?php endif ?>
										<?= form_error('image') ?>
									</div>
									<button class="btn btn-primary" type="submit">Create Now</button>
								    &nbsp;&nbsp;
								    <a href="javascript:window.history.go(-1)" class="btn btn-danger">Cancel</a>
								<?= form_close() ?>
							</div>
						</div>
					</div>
				</div>
			</div>