<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />

		<title><?= $title; ?></title>

		<!-- Favicon -->
		<link rel="icon" href="./images/favicon.png" type="image/x-icon" />

		<!-- Invoice styling -->
		<style>
			body {
				font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
				text-align: center;
				color: #777;
			}

			body h1 {
				font-weight: 300;
				margin-bottom: 0px;
				padding-bottom: 0px;
				color: #000;
			}

			body h3 {
				font-weight: 300;
				margin-top: 10px;
				margin-bottom: 20px;
				font-style: italic;
				color: #555;
			}

			body a {
				color: #06f;
			}

			.invoice-box {
				max-width: 800px;
				margin: auto;
				padding: 30px;
				border: 1px solid #eee;
				box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
				font-size: 16px;
				line-height: 24px;
				font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
				color: #555;
			}

			.invoice-box table {
				width: 100%;
				line-height: inherit;
				text-align: left;
				border-collapse: collapse;
			}

			.invoice-box table td {
				padding: 5px;
				vertical-align: top;
			}

			.invoice-box table tr td:nth-child(2) {
				text-align: right;
			}

			.invoice-box table tr.top table td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.top table td.title {
				font-size: 45px;
				line-height: 45px;
				color: #333;
			}

			.invoice-box table tr.information table td {
				padding-bottom: 40px;
			}

			.invoice-box table tr.heading td {
				background: #eee;
				border-bottom: 1px solid #ddd;
				font-weight: bold;
			}

			.invoice-box table tr.details td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.item td {
				border-bottom: 1px solid #eee;
			}

			.invoice-box table tr.item.last td {
				border-bottom: none;
			}

			.invoice-box table tr.total td:nth-child(2) {
				border-top: 2px solid #eee;
				font-weight: bold;
			}

			@media only screen and (max-width: 600px) {
				.invoice-box table tr.top table td {
					width: 100%;
					display: block;
					text-align: center;
				}

				.invoice-box table tr.information table td {
					width: 100%;
					display: block;
					text-align: center;
				}
			}
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
	    <?php foreach ($content as $row) : ?>
		<h1>SUMMARY</h1>

		<div class="invoice-box">
			<table>
				<tr class="top">
					<td colspan="2">
						<table>
							<tr>
								<td class="title">
									<span>Logo /Brand Design Brief</span>
								</td>

								<td>
									Creative Brief #: 00<?= $row->id ?><br />
									Start Project: <?= $row->start_project ?><br />
									End Project: <?= $row->end_project ?>
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="information">
					<td colspan="2">
						<table>
							<tr>
								<td>
									<?= $row->company_name ?><br />
									<?= $row->country_code ?> <?= $row->telp ?><br />
									<?= $row->industry ?>
								</td>

								<td>
									<?= $row->brand_name ?><br />
									<?= $row->fullname ?><br />
									<?= $row->email ?>
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="heading">
					<td>Slogan</td>

					<td></td>
				</tr>

				<tr class="details">
					<td><?= $row->slogan ?></td>

					<td></td>
				</tr>
				
				<tr class="heading">
					<td>Company Description</td>

					<td></td>
				</tr>

				<tr class="details">
					<td><?= $row->company_description ?></td>

					<td></td>
				</tr>
				
				<tr class="heading">
					<td>Target Audience</td>

					<td></td>
				</tr>

				<tr class="details">
					<td><?= $row->target_audience ?></td>

					<td></td>
				</tr>
				
				<tr class="heading">
					<td>Competitor</td>

					<td></td>
				</tr>

				<tr class="details">
					<td><?= $row->competitor ?></td>

					<td></td>
				</tr>
				
				<tr class="heading">
					<td>Competitive Advantage</td>

					<td></td>
				</tr>

				<tr class="details">
					<td><?= $row->competitive_advantage ?></td>

					<td></td>
				</tr>
				
				<tr class="heading">
					<td>Your Style</td>

					<td></td>
				</tr>

				<tr class="item">
					<td>
						<div class="row">
							<div class="col-md-6">
								<p style="text-align:left;">Classic</p>
							</div>
							<div class="col-md-6">
								<p style="text-align:right;">Modern</p>  
							</div>
						</div>
						    <input type="range" name="classic" min="1" max="100" value="<?= $row->classic ?>" class="slider" id="myRange" readonly="true">
						<div>
									
					</td>

					<td></td>
				</tr>
				
				<tr class="item">
					<td>
						<div class="row">
							<div class="col-md-6">
								<p style="text-align:left;">Nature</p>
							</div>
							<div class="col-md-6">
								<p style="text-align:right;">Youthful</p>  
							</div>
						</div>
						    <input type="range" name="classic" min="1" max="100" value="<?= $row->nature ?>" class="slider" id="myRange" readonly="true">
						<div>
									
					</td>

					<td></td>
				</tr>
				
				<tr class="item">
					<td>
						<div class="row">
							<div class="col-md-6">
								<p style="text-align:left;">Feminine</p>
							</div>
							<div class="col-md-6">
								<p style="text-align:right;">Masculine</p>  
						    </div>
						</div>
						    <input type="range" name="classic" min="1" max="100" value="<?= $row->feminine ?>" class="slider" id="myRange" readonly="true">
						<div>
									
					</td>

					<td></td>
				</tr>
				
				<tr class="item">
					<td>
						<div class="row">
							<div class="col-md-6">
								<p style="text-align:left;">Playful</p>
							</div>
							<div class="col-md-6">
								<p style="text-align:right;">Sophisticated</p>  
							</div>
						</div>
						    <input type="range" name="classic" min="1" max="100" value="<?= $row->playful ?>" class="slider" id="myRange" readonly="true">
						<div>
									
					</td>

					<td></td>
				</tr>
				
				<tr class="item">
					<td>
						<div class="row">
							<div class="col-md-6">
								<p style="text-align:left;">Economical</p>
							</div>
							<div class="col-md-6">
								<p style="text-align:right;">Luxurious</p>  
							</div>
						</div>
						    <input type="range" name="classic" min="1" max="100" value="<?= $row->economical ?>" class="slider" id="myRange" readonly="true">
						<div>
									
					</td>

					<td></td>
				</tr>
				
				<tr class="item">
					<td>
						<div class="row">
							<div class="col-md-6">
								<p style="text-align:left;">Geometric</p>
							</div>
							<div class="col-md-6">
								<p style="text-align:right;">Organic</p>  
							</div>
						</div>
						    <input type="range" name="classic" min="1" max="100" value="<?= $row->geometric ?>" class="slider" id="myRange" readonly="true">
						<div>
									
					</td>

					<td></td>
				</tr>
				
				<tr class="item">
					<td>
						<div class="row">
							<div class="col-md-6">
								<p style="text-align:left;">Abstract</p>
							</div>
							<div class="col-md-6">
								<p style="text-align:right;">Literal</p>  
							</div>
						</div>
						    <input type="range" name="classic" min="1" max="100" value="<?= $row->abstract ?>" class="slider" id="myRange" readonly="true">
						<div>
									
					</td>

					<td></td>
				</tr>
				
				<tr class="heading">
					<td>Image</td>

					<td></td>
				</tr>

				<tr class="details">
					<td><img src="<?= base_url() ?>images/documents/<?= $row->image ?>" class="img-fluid" alt="<?= $row->fullname ?>"></td>

					<td></td>
				</tr>
				
				<tr class="heading">
					<td>Color</td>

					<td></td>
				</tr>

				<tr class="item">
					<td><?= $row->colours_style ?></td>

					<td></td>
				</tr>
				
				<tr class="item">
					<td><?= $row->message_colour ?></td>

					<td></td>
				</tr>
				
				<tr class="heading">
					<td>Accepted the terms & conditions?</td>

					<td></td>
				</tr>

				<tr class="details">
					<td><?= $row->terms ?></td>

					<td></td>
				</tr>

				
			</table>
		</div>
		<?php endforeach ?>
	</body>
</html>