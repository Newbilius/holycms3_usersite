<br>
<?
if ($_selected_page['detail_text'])
    echo $_selected_page['detail_text'];
?>
<?
$user = HolyUser::getInstance();
if (!$user->IsAuth()) {
    Component::Factory("auth_user_form")
            ->SetParam("cabinet_url", "/cabinet/")
            ->Execute();
} else {
    Redirect("/cabinet/");
}
?>
<center>
    Войти или зарегистрироваться через социальную сеть:
    <?
    Component::Factory("auth_user_form_social")
            ->SetParam("module_url", "/ajax/ajax_social_reg")
            ->SetParam("cabinet_url", "/cabinet")
            ->Execute();
    ?>                    
    <a style="font-weight: bold;" href="/recovery_pass/">восстановить забытый пароль</a><br>
</center>