<?php
Component::Factory("auth_user_form_social")
        ->SetParam("module_url", "/ajax/ajax_social_reg")
        ->SetParam("cabinet_url", "/") //@fix почему не устанавливается (?!!!!)
        ->Execute();
?>
