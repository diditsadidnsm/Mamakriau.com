<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>Invoice Preview | CORK - Multipurpose Bootstrap Dashboard Template </title>
    <link rel="icon" type="image/x-icon" href="<?= base_url() ?>assets/member/assets/img/favicon.ico"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,600,700&display=swap" rel="stylesheet">
    <link href="<?= base_url() ?>assets/member/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/member/assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="<?= base_url() ?>assets/member/plugins/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!--  BEGIN CUSTOM STYLE FILE  -->
    <link href="<?= base_url() ?>assets/member/assets/css/apps/invoice-preview.css" rel="stylesheet" type="text/css" />
    <!--  END CUSTOM STYLE FILE  -->
    
</head>
<body class="alt-menu sidebar-noneoverflow">

    <?php $this->load->view('member/material/nam_navbar') ?>
    <?php $this->load->view('member/material/nam_topbar') ?>

        <?php foreach ($history as $detail) : ?>
        <div id="content" class="main-content">
            <div class="layout-px-spacing">
                <div class="page-header">
                    <nav class="breadcrumb-one" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Apps</a></li>
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Invoice</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><a href="javascript:void(0);">Preview</a></li>
                        </ol>
                    </nav>
                </div>
                
                <div class="row invoice  layout-spacing layout-top-spacing">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        
                        <div class="doc-container">

                            <div class="row">

                                <div class="col-xl-9">

                                    <div class="invoice-container">
                                        <div class="invoice-inbox">
                                            
                                            <div id="ct" class="">
                                                
                                                <div class="invoice-00001">
                                                    <div class="content-section">
    
                                                        <div class="inv--head-section inv--detail-section">
                                                        
                                                            <div class="row">
                                                            
                                                                <div class="col-sm-6 col-12 mr-auto">
                                                                    <div class="d-flex">
                                                                        <img class="company-logo" src="https://mamakriau.com//images/logo/mamak-riau-favicon.png" alt="company">
                                                                       
                                                                        <h3 class="in-heading align-self-center">MAMAKRIAU</h3>
                                                                    </div>
                                                                </div>

                                                                <div class="col-sm-6 text-sm-right">
                                                                    <p class="inv-list-number"><span class="inv-title">Invoice : </span> <span class="inv-number">#<?= $detail->no_invoice ?></span></p>
                                                                </div>

                                                                <div class="col-sm-6 align-self-center mt-3">
                                                                    <p class="inv-street-addr">MAMAKRIAU.COM</p>
                                                                    <p class="inv-email-address">riau_mariana@mamakriau.com</p>
                                                                    <p class="inv-email-address">(+62) 896 7543 0007</p>
                                                                </div>
                                                                <div class="col-sm-6 align-self-center mt-3 text-sm-right">
                                                                    <p class="inv-created-date"><span class="inv-title">Invoice Date : </span> <span class="inv-date"><?= $detail->invoice_date ?></span></p>
                                                                </div>
                                                            
                                                            </div>
                                                            
                                                        </div>
    
                                                        <div class="inv--detail-section inv--customer-detail-section">

                                                            <div class="row">
    
                                                                <div class="col-xl-8 col-lg-7 col-md-6 col-sm-4 align-self-center">
                                                                    <p class="inv-to">Invoice To</p>
                                                                </div>

                                                                <div class="col-xl-4 col-lg-5 col-md-6 col-sm-8 align-self-center order-sm-0 order-1 inv--payment-info">
                                                                    <h6 class=" inv-title">Payment Info:</h6>
                                                                </div>
                                                                
                                                                <div class="col-xl-8 col-lg-7 col-md-6 col-sm-4">
                                                                    <p class="inv-customer-name"><?= $detail->sure_name ?></p>
                                                                    <p class="inv-street-addr"><?= $detail->home_address ?></p>
                                                                    <p class="inv-email-address"><?= $detail->email ?></p>
                                                                    <p class="inv-email-address"><?= $detail->phone_number ?></p>
                                                                </div>
                                                                
                                                                <div class="col-xl-4 col-lg-5 col-md-6 col-sm-8 col-12 order-sm-0 order-1">
                                                                    <div class="inv--payment-info">
                                                                        <p><span class=" inv-subtitle">Bank Name:</span> <span> -</span></p>
                                                                        <p><span class=" inv-subtitle">Account Number: </span> <span> -</span></p>
                                                                        <p><span class=" inv-subtitle">SWIFT code:</span> <span> -</span></p>
                                                                        <p><span class=" inv-subtitle">Country: </span> <span><?= $detail->country_title ?></span></p>

                                                                    </div>
                                                                </div>

                                                            </div>
                                                            
                                                        </div>

                                                        <div class="inv--product-table-section">
                                                            <div class="table-responsive">
                                                                <table class="table">
                                                                    <thead class="">
                                                                        <tr>
                                                                            <th scope="col">S.No</th>
                                                                            <th scope="col">Services</th>
                                                                            <th class="text-right" scope="col">Qty</th>
                                                                            <th class="text-right" scope="col">Price</th>
                                                                            <th class="text-right" scope="col">Amount</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td>1</td>
                                                                            <td><?= $detail->service_title ?></td>
                                                                            <td class="text-right">1</td>
                                                                            <td class="text-right">$<?= $detail->price ?></td>
                                                                            <td class="text-right">$<?= $detail->price ?></td>
                                                                        </tr>
                                                                        <?php if($detail->all_you_need == null) : ?>
                                                                        <?php else : ?>
                                                                        <tr>
                                                                            <td>2</td>
                                                                            <td><?= $detail->storage ?></td>
                                                                            <td class="text-right">1</td>
                                                                            <td class="text-right">$<?= $detail->all_you_need ?></td>
                                                                            <td class="text-right">$<?= $detail->all_you_need ?></td>
                                                                        </tr>
                                                                        <?php endif ?>
                                                                        
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        
                                                        <div class="inv--total-amounts">
                                                        
                                                            <div class="row mt-4">
                                                                <div class="col-sm-5 col-12 order-sm-0 order-1">
                                                                </div>
                                                                <div class="col-sm-7 col-12 order-sm-1 order-0">
                                                                    <div class="text-sm-right">
                                                                        <div class="row">
                                                                            
                                                                            <?php if($detail->all_you_need == null) : ?>
                                                                                <div class="col-sm-8 col-7">
                                                                                    <p class="">Sub Total: </p>
                                                                                </div>
                                                                                <div class="col-sm-4 col-5">
                                                                                    <p class="">$<?= $detail->price ?></p>
                                                                                </div>
                                                                            <?php else : ?>
                                                                            <?php $pertama = $detail->price + $detail->all_you_need ?>
                                                                                <div class="col-sm-8 col-7">
                                                                                    <p class="">Sub Total: </p>
                                                                                </div>
                                                                                <div class="col-sm-4 col-5">
                                                                                    <p class="">$<?= $pertama ?></p>
                                                                                </div>
                                                                                <?php $detail->price = $pertama ?>
                                                                            <?php endif ?>
                                                                            
                                                                            <div class="col-sm-8 col-7">
                                                                                <p class="">Tax Amount: </p>
                                                                            </div>
                                                                            <div class="col-sm-4 col-5">
                                                                                <p class="">-</p>
                                                                            </div>
                                                                            
                                                                            <?php if($detail->discount == 0.20) : ?>
                                                                            <div class="col-sm-8 col-7">
                                                                                <p class=" discount-rate">Discount : <span class="discount-percentage">20%</span> </p>
                                                                            </div>
                                                                            <?php endif ?>
                                                                            
                                                                            <?php if($detail->discount == 0.25) : ?>
                                                                            <div class="col-sm-8 col-7">
                                                                                <p class=" discount-rate">Discount : <span class="discount-percentage">25%</span> </p>
                                                                            </div>
                                                                            <?php endif ?>
                                                                            
                                                                            <?php if($detail->discount == 0.35) : ?>
                                                                            <div class="col-sm-8 col-7">
                                                                                <p class=" discount-rate">Discount : <span class="discount-percentage">35%</span> </p>
                                                                            </div>
                                                                            <?php endif ?>
                                                                            
                                                                            <?php if($detail->discount == null) : ?>
                                                                                <div class="col-sm-8 col-7">
                                                                                    <p class=" discount-rate">Discount : <span class="discount-percentage">-</span> </p>
                                                                                </div>
                                                                                <div class="col-sm-4 col-5">
                                                                                    <p class="">-</p>
                                                                                </div>
                                                                                <div class="col-sm-8 col-7">
                                                                                    <h6 class="">Grand Total : </h6>
                                                                                </div>
                                                                                <?php
                                                                                    $total = $detail->price;
                                                                                ?>
                                                                                <div class="col-sm-4 col-5">
                                                                                    <h6 class="">$<?= $total ?></h6>
                                                                                </div>
                                                                            <?php else : ?>
                                                                            <?php 
                                                                            $result = $detail->price * $detail->discount;
                                                                            $total = $result;
                                                                            $return = $total;
                                                                            ?>
                                                                            <div class="col-sm-4 col-5">
                                                                                <p class="">$<?= $return ?></p>
                                                                            </div>
                                                                            <div class="col-sm-8 col-7">
                                                                                <h6 class="">Grand Total : </h6>
                                                                            </div>
                                                                            <?php
                                                                                $total = $detail->price - $return;
                                                                            ?>
                                                                            <div class="col-sm-4 col-5">
                                                                                <h6 class="">$<?= $total ?></h6>
                                                                            </div>
                                                                            <?php endif ?>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>

                                                        <div class="inv--note">

                                                            <div class="row mt-4">
                                                                <div class="col-sm-12 col-12 order-sm-0 order-1">
                                                                    <p>Note: Thank you for doing Business with us.</p>
                                                                </div>
                                                            </div>

                                                        </div>
    
                                                    </div>
                                                </div> 
                                                
                                            </div>
    
    
                                        </div>
    
                                    </div>

                                </div>

                                <div class="col-xl-3">

                                    <div class="invoice-actions-btn">

                                        <div class="invoice-action-btn">

                                            <div class="row">
                                                <!--<div class="col-xl-12 col-md-3 col-sm-6">-->
                                                <!--    <a href="javascript:void(0);" class="btn btn-primary btn-send">Send Invoice</a>-->
                                                <!--</div>-->
                                                <div class="col-xl-12 col-md-3 col-sm-6">
                                                    <a href="javascript:void(0);" class="btn btn-secondary btn-print  action-print">Print</a>
                                                </div>
                                                <!--<div class="col-xl-12 col-md-3 col-sm-6">-->
                                                <!--    <table border="0" cellpadding="10" cellspacing="0" align="center"><tr><td align="center"></td></tr><tr><td align="center"><a href="https://www.paypal.com/c2/webapps/mpp/paypal-popup?locale.x=en_C2" title="Check out with PayPal" onclick="javascript:window.open('https://mamakriau.com','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img src="<?= base_url() ?>images/logo/credit-card.png" /></a></td></tr></table><!-- PayPal Logo -->
                                                <!--</div>-->
                                                <div class="col-xl-12 col-md-3 col-sm-6">
                                                    <table border="0" cellpadding="10" cellspacing="0" align="center"><tr><td align="center"></td></tr><tr><td align="center"><a href="https://www.paypal.com/c2/webapps/mpp/paypal-popup?locale.x=en_C2" title="Check out with PayPal" onclick="javascript:window.open('<?= base_url("member/project/buyProject/$detail->id"); ?>','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img src="https://www.paypalobjects.com/digitalassets/c/website/marketing/apac/C2/logos-buttons/44_Grey_CheckOut_Pill_Button.png" alt="Check out with PayPal" /></a></td></tr></table><!-- PayPal Logo -->
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    
                                </div>


                            </div>
                            
                            
                        </div>

                    </div>
                </div>
                
            </div>
            <div class="footer-wrapper">
                <div class="footer-section f-section-1">
                    <p class="">Copyright © 2021 <a target="_blank" href="https://designreset.com">DesignReset</a>, All rights reserved.</p>
                </div>
                <div class="footer-section f-section-2">
                    <p class="">Coded with <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg></p>
                </div>
            </div>
        </div>
        <?php endforeach ?>

    </div>
    <!-- END MAIN CONTAINER -->

    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="<?= base_url() ?>assets/member/assets/js/libs/jquery-3.1.1.min.js"></script>
    <script src="<?= base_url() ?>assets/member/bootstrap/js/popper.min.js"></script>
    <script src="<?= base_url() ?>assets/member/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?= base_url() ?>assets/member/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="<?= base_url() ?>assets/member/assets/js/app.js"></script>
    
    <script>
        $(document).ready(function() {
            App.init();
        });
    </script>
    <script src="<?= base_url() ?>assets/member/assets/js/custom.js"></script>
    <!-- END GLOBAL MANDATORY SCRIPTS -->
    <script src="<?= base_url() ?>assets/member/assets/js/apps/invoice-preview.js"></script>
</body>
</html>