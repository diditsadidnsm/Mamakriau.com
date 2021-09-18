            <div class="page-content">
				<nav class="page-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="<?= base_url('administrator/country') ?>">Code Country</a></li>
						<li class="breadcrumb-item active" aria-current="page">Create Code Country</li>
					</ol>
				</nav>
				<div class="row">
					<div class="col-md-12 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h6 class="card-title">Inputs</h6>
								<?= form_open($form_action, ['method' => 'POST']) ?>
                                <?= isset($input->id) ? form_hidden('id', $input->id) : '' ?>
                                    <div class="form-group">
										<label for="exampleInputText1">Code</label>
										<?= form_input('code', $input->code, ['class' => 'form-control']) ?>
										<?= form_error('code') ?>
									</div>
									<div class="form-group">
										<label for="exampleInputText1">Country</label>
										<?= form_input('title', $input->title, ['class' => 'form-control']) ?>
										<?= form_error('title') ?>
									</div>
									<button class="btn btn-primary" type="submit">Create Now</button>
									<button onclick="goBack()" class="btn btn-danger">Cancel</button>
								<?= form_close() ?>
							</div>
						</div>
					</div>
				</div>
			</div>