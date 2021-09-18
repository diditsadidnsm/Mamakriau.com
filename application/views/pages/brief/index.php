<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="MAVIA - Register, Reservation, Questionare, Reviews form wizard">
	<meta name="author" content="Ansonika">
	<title><?= $title; ?></title>
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">
	<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;700&display=swap" rel="stylesheet">
	<link href="<?= base_url() ?>/assets/form/css/bootstrap.min.css" rel="stylesheet">
	<link href="<?= base_url() ?>/assets/form/css/style.css" rel="stylesheet">
	<link href="<?= base_url() ?>/assets/form/css/responsive.css" rel="stylesheet">
	<link href="<?= base_url() ?>/assets/form/css/menu.css" rel="stylesheet">
	<link href="<?= base_url() ?>/assets/form/css/animate.min.css" rel="stylesheet">
	<link href="<?= base_url() ?>/assets/form/css/icon_fonts/css/all_icons_min.css" rel="stylesheet">
	<link href="<?= base_url() ?>/assets/form/css/skins/square/grey.css" rel="stylesheet">
	<link href="<?= base_url() ?>/assets/form/css/custom.css" rel="stylesheet">
	<script src="<?= base_url() ?>/assets/form/js/modernizr.js"></script>
	<link href="<?= base_url() ?>/assets/form/css/date_time_picker.css" rel="stylesheet">
	<style>
        .slidecontainer {
          width: 100%;
        }

        .slider {
          -webkit-appearance: none;
          width: 100%;
          height: 15px;
          background: #d3d3d3;
          outline: none;
          opacity: 0.7;
          -webkit-transition: .2s;
          transition: opacity .2s;
        }

        .slider:hover {
          opacity: 1;
        }

        .slider::-webkit-slider-thumb {
          -webkit-appearance: none;
          appearance: none;
          width: 25px;
          height: 25px;
          background: #4CAF50;
          cursor: pointer;
          border-radius: 100%;
        }

        .slider::-moz-range-thumb {
          width: 25px;
          height: 25px;
          background: #4CAF50;
          cursor: pointer;
        }
    </style>
</head>

<body>
	
	<div id="preloader">
		<div data-loader="circle-side"></div>
	</div><!-- /Preload -->
	
	<div id="loader_form">
		<div data-loader="circle-side-2"></div>
	</div>

	<main>
		<div id="form_container">
			<div class="row">
				<div class="col-lg-12">

					<div id="wizard_container">
						<!--<div id="top-wizard">-->
						<!--	<div id="progressbar"></div>-->
						<!--</div>-->
						<!-- /top-wizard -->
						<?= form_open_multipart($form_action, ['method' => 'POST']) ?>
						    <?= form_input(['type' => 'hidden', 'name' => 'id_user', 'value' => $this->session->userdata('id'), 'class' => 'form-control']) ?>
							<input id="website" name="website" type="text" value="">
							<!-- Leave for security protection, read docs for details -->
							<div id="middle-wizard">

								<div class="step">
									<h3 class="main_question"><strong>1/5</strong>Personal info</h3>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
											    <?= form_input(['type' => 'text', 'name' => 'fullname', 'value' => $this->session->userdata('name'), 'class' => 'form-control required', 'placeholder' => 'Full Name']) ?>
												<!--<input type="text" name="fullname" class="form-control required" placeholder="Full Name" value="<?= $this->session->userdata('name') ?>" readonly="true">-->
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
											    <?= form_input(['type' => 'email', 'name' => 'email', 'value' => $this->session->userdata('email'), 'class' => 'form-control required', 'placeholder' => 'Email Address']) ?>
												<!--<input type="email" name="email" class="form-control required" placeholder="Email Address" value="<?= $this->session->userdata('email') ?>" readonly="true">-->
											</div>
										</div>
									</div>
									<!-- /row -->

									<div class="row">
										<div class="col-md-4">
											<div class="form-group">
												<div class="styled-select">
                                                    <!--<?= form_dropdown('country_code', getDropdownList('country', ['code']), $input->country_code, ['class' => 'form-control required']) ?>-->
													<select class="required" name="country_code">
														<option value="" selected>Country Code</option>
														<?php foreach (getCodeCountry() as $country) : ?>
														<option value="<?= $country->code ?>">(<?= $country->code ?>) <?= $country->title ?></option>
														<?php endforeach ?>
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-8">
											<div class="form-group">
											    <?= form_input(['type' => 'number', 'name' => 'telp', 'value' => $input->telp, 'class' => 'form-control required', 'placeholder' => 'Your Telephone']) ?>
												<!--<input type="number" name="telp" class="form-control" placeholder="Your Telephone">-->
											</div>
										</div>
									</div>
									<!-- /row -->

									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
											    <?= form_input(['type' => 'text', 'name' => 'company_name', 'value' => $input->company_name, 'class' => 'form-control', 'placeholder' => 'Company Name']) ?>
												<!--<input type="text" name="company_name" class="form-control required" placeholder="Company Name">-->
											</div>
										</div>
									</div>
									<!-- /row -->
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<div class="styled-select">
												    <!--<?= form_dropdown('industry', getDropdownList('industry', ['title']), $input->industry, ['class' => 'form-control required']) ?>-->
													<select class="form-control" name="industry">
														<option value="None" selected>Select Industry</option>
														<?php foreach (getIndustry() as $industry) : ?>
														<option value="<?= $industry->title ?>"><?= $industry->title ?></option>
														<?php endforeach ?>
													</select>
												</div>
											</div>
										</div>
									</div>
									<!-- /row -->
								</div>
								<!-- /step-->

								<div class="step">
									<h3 class="main_question"><strong>2/5</strong>Creative Brief</h3>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
											    <?= form_input(['type' => 'text', 'name' => 'brand_name', 'value' => $input->brand_name, 'class' => 'form-control required', 'placeholder' => 'Brand Name']) ?>
												<!--<input type="text" name="brand_name" class="form-control required" placeholder="Brand Name">-->
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
											    <?= form_input(['type' => 'text', 'name' => 'slogan', 'value' => $input->slogan, 'class' => 'form-control required', 'placeholder' => 'Slogan']) ?>
												<!--<input type="text" name="slogan" class="form-control required" placeholder="Slogan">-->
											</div>
										</div>
										<!-- /col-sm-12 -->
									</div>
									<!-- /row -->
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
											    <?= form_textarea(['name' => 'company_description', 'value' => $input->company_description, 'row' => 4, 'class' => 'form-control required', 'placeholder' => 'Company Description']) ?>
												<!--<textarea type="text" name="company_description" row="4" class="form-control required" placeholder="Company Description"></textarea>-->
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
											    <?= form_textarea(['name' => 'target_audience', 'value' => $input->target_audience, 'row' => 4, 'class' => 'form-control required', 'placeholder' => 'Target Audience']) ?>
												<!--<textarea type="text" name="target_audience" row="4" class="form-control required" placeholder="Target Audience"></textarea>-->
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
											    <?= form_textarea(['name' => 'competitor', 'value' => $input->competitor, 'row' => 4, 'class' => 'form-control', 'placeholder' => 'Competitor']) ?>
												<!--<textarea type="text" name="competitor" row="4" class="form-control required" placeholder="Competitor"></textarea>-->
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
											    <?= form_textarea(['name' => 'competitive_advantage', 'value' => $input->competitive_advantage, 'row' => 4, 'class' => 'form-control', 'placeholder' => 'Competitive Advantage']) ?>
												<!--<textarea type="text" name="competitive_advantage" class="form-control required" placeholder="Competitive Advantage"></textarea>-->
											</div>
										</div>
									</div>
									<!-- /row -->
									<br />
								</div>
								<!-- /step-->
								
								<div class="step">
									<h3 class="main_question"><strong>3/5</strong>Timeline</h3>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
											    <?= form_input(['type' => 'text', 'name' => 'start_project', 'value' => $input->start_project, 'class' => 'form-control required', 'placeholder' => 'Start Project', 'id' => 'check_in']) ?>
												<!--<input class="form-control required" type="text" name="start_project" id="check_in" placeholder="Start Project">-->
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
											    <?= form_input(['type' => 'text', 'name' => 'end_project', 'value' => $input->end_project, 'class' => 'form-control required', 'placeholder' => 'End Project', 'id' => 'check_out']) ?>
												<!--<input class="form-control required" type="text" name="end_project" id="check_out" placeholder="End Project">-->
											</div>
										</div>
									</div>
									<br />
									<h3 class="main_question">AddServices</h3>
									<p>14th Day Services $15</p>
									<p>7th Day Services $39</p>
									<p>5th Day Services $54</p>
									<p>3th Day Services $69</p>
								</div>
								<!-- /step-->

								<div class="step">
									<h3 class="main_question"><strong>4/5</strong>Your Style</h3>
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-6">
									            <p style="text-align:left;">Classic</p>
									        </div>
									        <div class="col-md-6">
									            <p style="text-align:right;">Modern</p>  
									        </div>
									    </div>
									    <?= form_input(['type' => 'range', 'name' => 'classic', 'value' => '50', 'class' => 'slider', 'min' => '1', 'max' => '100', 'id' => 'myRange']) ?>
										<!--<input type="range" name="classic" min="1" max="100" value="50" class="slider" id="myRange">-->
									</div>
									<br />
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-6">
									            <p style="text-align:left;">Nature</p>
									        </div>
									        <div class="col-md-6">
									            <p style="text-align:right;">Youthful</p>  
									        </div>
									    </div>
									    <?= form_input(['type' => 'range', 'name' => 'nature', 'value' => '50', 'class' => 'slider', 'min' => '1', 'max' => '100', 'id' => 'myRange']) ?>
										<!--<input type="range" name="nature" min="1" max="100" value="50" class="slider" id="myRange"> -->
									</div>
									<br />
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-6">
									            <p style="text-align:left;">Feminine</p>
									        </div>
									        <div class="col-md-6">
									            <p style="text-align:right;">Masculine</p>  
									        </div>
									    </div>
									    <?= form_input(['type' => 'range', 'name' => 'feminine', 'value' => '50', 'class' => 'slider', 'min' => '1', 'max' => '100', 'id' => 'myRange']) ?>
										<!--<input type="range" name="feminine" min="1" max="100" value="50" class="slider" id="myRange"> -->
									</div>
									<br />
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-6">
									            <p style="text-align:left;">Playful</p>
									        </div>
									        <div class="col-md-6">
									            <p style="text-align:right;">Sophisticated</p>  
									        </div>
									    </div>
									    <?= form_input(['type' => 'range', 'name' => 'playful', 'value' => '50', 'class' => 'slider', 'min' => '1', 'max' => '100', 'id' => 'myRange']) ?>
										<!--<input type="range" name="playful" min="1" max="100" value="50" class="slider" id="myRange"> -->
									</div>
									<br />
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-6">
									            <p style="text-align:left;">Economical</p>
									        </div>
									        <div class="col-md-6">
									            <p style="text-align:right;">Luxurious</p>  
									        </div>
									    </div>
									    <?= form_input(['type' => 'range', 'name' => 'economical', 'value' => '50', 'class' => 'slider', 'min' => '1', 'max' => '100', 'id' => 'myRange']) ?>
										<!--<input type="range" name="economical" min="1" max="100" value="50" class="slider" id="myRange"> -->
									</div>
									<br />
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-6">
									            <p style="text-align:left;">Geometric</p>
									        </div>
									        <div class="col-md-6">
									            <p style="text-align:right;">Organic</p>  
									        </div>
									    </div>
									    <?= form_input(['type' => 'range', 'name' => 'geometric', 'value' => '50', 'class' => 'slider', 'min' => '1', 'max' => '100', 'id' => 'myRange']) ?>
										<!--<input type="range" name="geometric" min="1" max="100" value="50" class="slider" id="myRange"> -->
									</div>
									<br />
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-6">
									            <p style="text-align:left;">Abstract</p>
									        </div>
									        <div class="col-md-6">
									            <p style="text-align:right;">Literal</p>  
									        </div>
									    </div>
									    <?= form_input(['type' => 'range', 'name' => 'abstract', 'value' => '50', 'class' => 'slider', 'min' => '1', 'max' => '100', 'id' => 'myRange']) ?>
										<!--<input type="range" name="abstract" min="1" max="100" value="50" class="slider" id="myRange"> -->
									</div>
									<br />
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-12">
									            <label>Skecthes or Documents</label>
									            <?= form_upload('image') ?>
									        </div>
									    </div>
									</div>
									<br />
								</div>
								<!-- /step-->
								
								<!-- /step-->
								<div class="step submit">
									<h3 class="main_question"><strong>5/5</strong>Colors</h3>
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-12">
									            <ul>
                                                    <li>
                                                      <?= form_checkbox(['name' => 'colours_style[]', 'value' => 'aqua', 'id' => 'cb1']) ?>
                                                      <!--<input name="aqua" type="checkbox" id="cb1" value="Aqua" />-->
                                                      <label for="cb1"><img src="<?= base_url() ?>assets/form/img/color/aqua-2ad270cb.png" /></label>
                                                    </li>
                                                    <li>
                                                      <?= form_checkbox(['name' => 'colours_style[]', 'value' => 'blue', 'id' => 'cb2']) ?>
                                                      <!--<input name="blue" type="checkbox" id="cb2" value="Blue" />-->
                                                      <label for="cb2"><img src="<?= base_url() ?>assets/form/img/color/blue-ddc0e5cf.png" /></label>
                                                    </li>
                                                    <li>
                                                      <?= form_checkbox(['name' => 'colours_style[]', 'value' => 'dark', 'id' => 'cb3']) ?>
                                                      <!--<input name="dark" type="checkbox" id="cb3" value="Dark" />-->
                                                      <label for="cb3"><img src="<?= base_url() ?>assets/form/img/color/dark-6976a991.png" /></label>
                                                    </li>
                                                    <li>
                                                      <?= form_checkbox(['name' => 'colours_style[]', 'value' => 'green', 'id' => 'cb4']) ?>
                                                      <!--<input name="green" type="checkbox" id="cb4" value="Green" />-->
                                                      <label for="cb4"><img src="<?= base_url() ?>assets/form/img/color/green-24a49099.png" /></label>
                                                    </li>
                                                </ul>
									        </div>
									    </div>
									</div>
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-12">
									            <ul>
                                                    <li>
                                                      <?= form_checkbox(['name' => 'colours_style', 'value' => 'light', 'id' => 'cb5']) ?>
                                                      <!--<input name="light" type="checkbox" id="cb5" value="Light" />-->
                                                      <label for="cb5"><img src="<?= base_url() ?>assets/form/img/color/light-4fc3a041.png" /></label>
                                                    </li>
                                                    <li>
                                                      <?= form_checkbox(['name' => 'colours_style', 'value' => 'orange', 'id' => 'cb6']) ?>
                                                      <!--<input name="orange" type="checkbox" id="cb6" value="Orange" />-->
                                                      <label for="cb6"><img src="<?= base_url() ?>assets/form/img/color/orange-8f167965.png" /></label>
                                                    </li>
                                                    <li>
                                                      <?= form_checkbox(['name' => 'colours_style', 'value' => 'pink', 'id' => 'cb7']) ?>
                                                      <!--<input name="pink" type="checkbox" id="cb7" value="Pink" />-->
                                                      <label for="cb7"><img src="<?= base_url() ?>assets/form/img/color/pink-01853e5c.png" /></label>
                                                    </li>
                                                    <li>
                                                      <?= form_checkbox(['name' => 'colours_style', 'value' => 'purple', 'id' => 'cb8']) ?>
                                                      <!--<input name="purple" type="checkbox" id="cb8" value="Purple" />-->
                                                      <label for="cb8"><img src="<?= base_url() ?>assets/form/img/color/purple-e7723e2e.png" /></label>
                                                    </li>
                                                </ul>
									        </div>
									    </div>
									</div>
									<div class="form-group">
									    <div class="row">
									        <div class="col-md-12">
									            <ul>
                                                    <li>
                                                      <?= form_checkbox(['name' => 'colours_style', 'value' => 'red', 'id' => 'cb9']) ?>
                                                      <!--<input name="red" type="checkbox" id="cb9" value="Red" />-->
                                                      <label for="cb9"><img src="<?= base_url() ?>assets/form/img/color/red-d750f2a1.png" /></label>
                                                    </li>
                                                    <li>
                                                      <?= form_checkbox(['name' => 'colours_style', 'value' => 'yellow', 'id' => 'cb10']) ?>
                                                      <!--<input name="yellow" type="checkbox" id="cb10" value="Yellow" />-->
                                                      <label for="cb10"><img src="<?= base_url() ?>assets/form/img/color/yellow-8bf27a5c.png" /></label>
                                                    </li>
                                                </ul>
									        </div>
									    </div>
									</div>
									
									<div class="form-group">
									    <?= form_textarea(['name' => 'message_colour', 'value' => $input->message_colour, 'height' => 150, 'class' => 'form-control', 'placeholder' => 'Your specific colour in RGB, CMYK, Hex, Pantone etc.']) ?>
										<!--<textarea name="message_colour" class="form-control" style="height:150px;" placeholder="Your specific colour in RGB, CMYK, Hex, Pantone etc."></textarea>-->
									</div>
									
									<div class="form-group terms">
									    <?= form_checkbox(['name' => 'terms', 'value' => 'Yes', 'class' => 'icheck required']) ?>
										<!--<input name="terms" type="checkbox" class="icheck required" value="Yes">-->
										Please accept <a href="#" data-toggle="modal" data-target="#terms-txt">terms and conditions</a> ?
									</div>
									
								</div>
								
								<style>
								    ul {
                                      list-style-type: none;
                                    }

                                    li {
                                      display: inline-block;
                                    }

                                    input[type="checkbox"][id^="cb"] {
                                      display: none;
                                    }

                                    label {
                                      border: 1px solid #fff;
                                      padding: 10px;
                                      display: block;
                                      position: relative;
                                      margin: 10px;
                                      cursor: pointer;
                                      -webkit-touch-callout: none;
                                      -webkit-user-select: none;
                                      -khtml-user-select: none;
                                      -moz-user-select: none;
                                      -ms-user-select: none;
                                      user-select: none;
                                    }

                                    label::before {
                                      background-color: white;
                                      color: white;
                                      content: " ";
                                      display: block;
                                      border-radius: 50%;
                                      border: 1px solid grey;
                                      position: absolute;
                                      top: -5px;
                                      left: -5px;
                                      width: 25px;
                                      height: 25px;
                                      text-align: center;
                                      line-height: 28px;
                                      transition-duration: 0.4s;
                                      transform: scale(0);
                                    }

                                    label img {
                                      height: 180px;
                                      width: 180px;
                                      transition-duration: 0.2s;
                                      transform-origin: 50% 50%;
                                    }

                                    :checked+label {
                                      border-color: #ddd;
                                    }

                                    :checked+label::before {
                                      content: "✓";
                                      background-color: grey;
                                      transform: scale(1);
                                    }

                                    :checked+label img {
                                      transform: scale(0.9);
                                      box-shadow: 0 0 5px #333;
                                      z-index: -1;
                                    }
								</style>
								
								
								
							</div>
							<!-- /middle-wizard -->
							<div id="bottom-wizard">
								<button type="button" name="backward" class="backward">Backward </button>
								<button type="button" name="forward" class="forward">Forward</button>
								<button type="submit" class="submit">Submit</button>
							</div>
							<!-- /bottom-wizard -->
						<?= form_close() ?>
					</div>
					<!-- /Wizard container -->
				</div>
			</div><!-- /Row -->
		</div><!-- /Form_container -->
	</main>
	
	<footer id="home" class="clearfix">
		<p>© 2021 mamakriau.com</p>
	</footer>
	<!-- end footer-->
	
	<div class="cd-overlay-nav">
		<span></span>
	</div>
	<!-- cd-overlay-nav -->

	<div class="cd-overlay-content">
		<span></span>
	</div>
	<!-- cd-overlay-content -->

	<a href="#0" class="cd-nav-trigger">Menu<span class="cd-icon"></span></a>

	<!-- Modal terms -->
	<div class="modal fade" id="terms-txt" tabindex="-1" role="dialog" aria-labelledby="termsLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="termsLabel">Terms and conditions</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<p>Lorem ipsum dolor sit amet, in porro albucius qui, in <strong>nec quod novum accumsan</strong>, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
					<p>Lorem ipsum dolor sit amet, in porro albucius qui, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus. Lorem ipsum dolor sit amet, <strong>in porro albucius qui</strong>, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
					<p>Lorem ipsum dolor sit amet, in porro albucius qui, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn_1" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- Modal info -->
	<div class="modal fade" id="more-info" tabindex="-1" role="dialog" aria-labelledby="more-infoLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="more-infoLabel">Frequently asked questions</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<p>Lorem ipsum dolor sit amet, in porro albucius qui, in <strong>nec quod novum accumsan</strong>, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
					<p>Lorem ipsum dolor sit amet, in porro albucius qui, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus. Lorem ipsum dolor sit amet, <strong>in porro albucius qui</strong>, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
					<p>Lorem ipsum dolor sit amet, in porro albucius qui, in nec quod novum accumsan, mei ludus tamquam dolores id. No sit debitis meliore postulant, per ex prompta alterum sanctus, pro ne quod dicunt sensibus.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn_1" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- SCRIPTS -->
	<script src="<?= base_url() ?>/assets/form/js/jquery-3.5.1.min.js"></script>
	<script src="<?= base_url() ?>/assets/form/js/common_scripts_min.js"></script>
	<script src="<?= base_url() ?>/assets/form/js/registration_wizard_func.js"></script>
	<script src="<?= base_url() ?>/assets/form/js/velocity.min.js"></script>
	<script src="<?= base_url() ?>/assets/form/js/main.js"></script>
	<script src="<?= base_url() ?>/assets/form/js/functions.js"></script>
	<script src="<?= base_url() ?>/assets/form/js/datepicker_func.js"></script>
	<script>
	    $('input[type=checkbox]').on('change', function (e) {
    if ($('input[type=checkbox]:checked').length > 3) {
        $(this).prop('checked', false);
        alert("allowed only 3");
    }
});
	</script>

</body>
</html>