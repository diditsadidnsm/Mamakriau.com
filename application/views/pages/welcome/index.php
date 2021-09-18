<?php if ($this->session->userdata('role') == 'admin') : ?>
<?php redirect(base_url('administrator/dashboard')); ?>
<?php endif ?>
<?php if ($this->session->userdata('role') == 'member') : ?>
<?php redirect(base_url('member/profile')); ?>
<?php endif ?>