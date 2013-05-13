<? if (!defined('HCMS')) die(); ?>
<form method=post>
    <table align=center valign=center halign=center>
        <tr>
            <td>Email/Логин &nbsp;</td>
            <td><input type=text value="<?= $_POST['login'] ?>" name=login></td>
        </tr>
        <tr>
            <td>Пароль</td>
            <td><input type=password value="" name=pass></td>
        </tr>
        <tr>
            <td colspan=2 align=center>
                <input class="btn btn-primary" name=submit type=submit value="Войти">
                <input class="btn btn-success" name=submit type=submit value="Зарегистрироваться">
            </td>
        </tr>
        <tr>
            <td colspan=2>
                <?
                if (isset($result['errors']))
                    foreach ($result['errors'] as $e) {
                    $e=  str_replace("Такое значение поля E-mail уже существует.", "Пользователь с таким E-mail уже существует", $e);
                        ?>
                        <span style="color:red;">
                            <?= $e ?>
                        </span><BR>
                        <?
                    };
                ?>
            </td>
        </tr>
    </table>
</form>