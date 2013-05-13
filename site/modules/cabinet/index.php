<?
echo $_selected_page['detail_text'];
$user = HolyUser::getInstance();
if ($user->IsAuth()) {
    if (isset($_GET['exit'])) {
        $user->Logout();
        Redirect("/", true);
    };

    $info = $user->GetInfo();
    $_POST = fill_empty_array($_POST, Array(
        "pass1",
        "pass2",
            ));
    if (isset($_POST['go'])) {
        $_POST = clear_array($_POST);

        if ($_POST['go'] == 2) {
            $valid = new HolyValidator(Array(
                        "pass1" => "пароль",
                        "pass2" => "повтор пароля",
                    ));
            $valid->AddRule("not_empty", 'pass1')
                    ->AddRule("not_empty", 'pass2')
                    ->AddRule("equal", 'pass1', "pass2")
            ;
            $valid->Check($_POST);

            $errors = $valid->Complete();

            if ($errors === true) {
                $user->Update(Array(
                    "password" => $_POST['pass1'],
                ));
                $info = $user->GetInfo();
            } else {
                ?><div class="alert alert-error"><?
                foreach ($errors as $error) {
                    ?>
                        <p style="color:red;"><? echo $error; ?></p>
                        <?
                    }
                    ?></div><?
            }
        };
    }
        ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="" style="padding-left:50px;">
                    <h4>Ваш email (он же логин)</h4>
                    <span style="font-size:18px">
                        <?= $info['email'] ?>
                    </span>
                    <a href="?exit=yes" class="btn btn-danger">Выйти</a>
                    <hr>
                    <h4>Смена пароля</h4>
                    <form method="post">
                        <input type="hidden" name="go" value="2">
                        Новый пароль:<br>
                        <input type="password" name="pass1" value="" style="width: 300px;"><br>
                        Повтор нового пароля:<br>
                        <input type="password" name="pass2" value="" style="width: 300px;"><br>
                        <input class="btn" type="submit" value="сохранить">
                    </form>
                    <hr>
                    <h4>Привязать ещё социальных аккаунтов к текущему:</h4>
                    <?
                    Component::Factory("auth_user_form_social")
                            ->SetParam("module_url", "/ajax/ajax_social_reg")
                            ->SetParam("cabinet_url", "/cabinet/")
                            ->Execute();
                    ?>
                    <?
                } else {
                    Redirect("/", true);
                }
                ?>