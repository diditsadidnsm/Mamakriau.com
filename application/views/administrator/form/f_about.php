            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/about') ?>">About Page</a></li>
						<li class="breadcrumb-item active" aria-current="page">Edit About</li>
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
                                    <label>Title</label>
                                    <?= form_input('title', $input->title, ['class' => 'form-control', 'id' => 'title', 'placeholder' => 'About Title']) ?>
                                    <?= form_error('title') ?>
                                </div>
                                <div class="form-group">
                                    <label>Category</label>
                                    <?= form_input('category', $input->category, ['class' => 'form-control']) ?>
                                    <?= form_error('category') ?>
                                </div>
                                <div class="form-group">
                                    <label>Phone Number</label>
                                    <?= form_input(['type' => 'number', 'name' => 'phone', 'value' => $input->phone, 'class' => 'form-control']) ?>
                                    <?= form_error('phone') ?>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <?= form_input('address', $input->address, ['class' => 'form-control']) ?>
                                    <?= form_error('address') ?>
                                </div>
                                <div class="form-group">
                                    <label>Maps</label>
                                    <?= form_input('maps', $input->maps, ['class' => 'form-control']) ?>
                                    <?= form_error('maps') ?>
                                </div>
                                <div class="form-group">
                                    <label>Email Address</label>
                                    <?= form_input('email', $input->email, ['class' => 'form-control']) ?>
                                    <?= form_error('email') ?>
                                </div>
                                <div class="form-group">
                                    <label>URL Facebook</label>
                                    <?= form_input('facebook', $input->facebook, ['class' => 'form-control']) ?>
                                    <?= form_error('facebook') ?>
                                </div>
                                <div class="form-group">
                                    <label>URL Instagram</label>
                                    <?= form_input('instagram', $input->instagram, ['class' => 'form-control']) ?>
                                    <?= form_error('instagram') ?>
                                </div>
                                <div class="form-group">
                                    <label>URL Linkedin</label>
                                    <?= form_input('linkedin', $input->linkedin, ['class' => 'form-control']) ?>
                                    <?= form_error('linkedin') ?>
                                </div>
                                <div class="form-group">
                                    <label>URL Twitter</label>
                                    <?= form_input('twitter', $input->twitter, ['class' => 'form-control']) ?>
                                    <?= form_error('twitter') ?>
                                </div>
                                <div class="form-group">
                                    <label>URL Dribbble</label>
                                    <?= form_input('drb', $input->drb, ['class' => 'form-control']) ?>
                                    <?= form_error('drb') ?>
                                </div>
                                <div class="form-group">
                                    <label>URL Behance</label>
                                    <?= form_input('bhc', $input->bhc, ['class' => 'form-control']) ?>
                                    <?= form_error('bhc') ?>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <?= form_textarea(['name' => 'description', 'value' => $input->description, 'row' => 4, 'class' => 'form-control']) ?>
                                    <?= form_error('description') ?>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputText1">Background</label>
									<br />
                                    <?= form_upload('image') ?>
                                    <?php if ($this->session->flashdata('image_error')) : ?>
                                    <small class="form-text text-danger"><?= $this->session->flashdata('image_error') ?></small>
                                    <?php endif ?>
                                    <?php if ($input->image) : ?>
                                    <img src="<?= base_url("/images/about/$input->image") ?>" alt="" height="150">
                                    <?php endif ?>
                                    <?= form_error('image') ?>
                                </div>
                
                                <hr />
                                <h3>Setting Page About</h3>
                                <div class="form-group">
                                    <label>Title Color</label>
                                    <?= form_input('color1', $input->color1, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('color1') ?>
                                </div>
                                <div class="form-group">
                                    <label>Description Color</label>
                                    <?= form_input('color2', $input->color2, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('color2') ?>
                                </div>
                                <div class="form-group">
                                    <label>Title Icon Color</label>
                                    <?= form_input('color3', $input->color3, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('color3') ?>
                                </div>
                                <div class="form-group">
                                    <label>Description Icon Color</label>
                                    <?= form_input('color4', $input->color4, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('color4') ?>
                                </div>
                                <div class="form-group">
                                    <label>Size Box</label>
                                    <?= form_input('size', $input->size, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('size') ?>
                                </div>
                
                                <hr />
                                <h3>Setting Page Services</h3>
                                <div class="form-group">
                                    <label>Title Color</label>
                                    <?= form_input('colorservices1', $input->colorservices1, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('colorservices1') ?>
                                </div>
                                <div class="form-group">
                                    <label>Description Color</label>
                                    <?= form_input('colorservices2', $input->colorservices2, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('colorservices2') ?>
                                </div>
                                <div class="form-group">
                                    <label>Title Icon Color</label>
                                    <?= form_input('colorservices3', $input->colorservices3, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('colorservices3') ?>
                                </div>
                                <div class="form-group">
                                    <label>Description Icon Color</label>
                                    <?= form_input('colorservices4', $input->colorservices4, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('colorservices4') ?>
                                </div>
                                <div class="form-group">
                                    <label>Size Box</label>
                                    <?= form_input('sizeboxservices', $input->sizeboxservices, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('sizeboxservices') ?>
                                </div>
                                <div class="form-group">
                                    <label>Text Type</label>
                                    <?= form_input('textalignservices', $input->textalignservices, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('textalignservices') ?>
                                </div>
                
                
                                <hr/>
                                <h3>Setting Page Team</h3>
                                <div class="form-group">
                                    <label>Size Box</label>
                                    <?= form_input('sizeboxteam', $input->sizeboxteam, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('sizeboxteam') ?>
                                </div>
                
                                <hr/>
                                <h3>Setting All Page</h3>
                                <div class="form-group">
                                    <label>Fonts</label>
                                    <?= form_input('font', $input->font, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('font') ?>
                                </div>
                                <div class="form-group">
                                    <label>Light or Dark Mode</label>
                                    <?= form_input('mode', $input->mode, ['class' => 'form-control', 'required' => true]) ?>
                                    <?= form_error('mode') ?>
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




                
            