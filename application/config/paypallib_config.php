<?php  

if (!defined('BASEPATH')) exit('No direct script access allowed');

$config['sandbox'] = FALSE;

$config['business'] = 'mamak.riau.m@gmail.com';

$config['paypal_lib_ipn_log_file'] = BASEPATH . 'logs/paypal_ipn.log';
$config['paypal_lib_ipn_log'] = TRUE;

$config['paypal_lib_button_path'] = 'buttons';

$config['paypal_lib_currency_code'] = 'USD';

?>