<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<?php foreach (getSeo() as $seo) : ?>
	<title><?= $title; ?> | <?= $seo->title ?></title>
	<meta content="<?= $seo->description ?>" name="description" />
    <meta content="Nashiruddien Sadid Mustaqim" name="author" />
    <meta content="<?= $seo->keyword ?>" name="keyword" />
    <link rel="shortcut icon" href="<?= base_url() ?>/images/seo/<?= $seo->image ?>">
	<?php endforeach ?>
	<link rel="stylesheet" href="<?= base_url() ?>/theme/vendors/core/core.css">
	<link rel="stylesheet" href="<?= base_url() ?>/theme/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>/theme/fonts/feather-font/css/iconfont.css">
	<link rel="stylesheet" href="<?= base_url() ?>/theme/vendors/flag-icon-css/css/flag-icon.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>/theme/css/demo_2/style.css">
	<link rel="stylesheet" href="<?= base_url() ?>/theme/vendors/owl.carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="<?= base_url() ?>/theme/vendors/owl.carousel/owl.theme.default.min.css">
    <script src="https://cdn.ckeditor.com/4.16.0/full/ckeditor.js"></script>
</head>
<body>
	<div class="main-wrapper">