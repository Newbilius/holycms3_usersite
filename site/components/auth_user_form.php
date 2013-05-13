<?php

class Component_auth_user_form extends Component {

    protected function GetDefaults() {
        return array(
            "template" => "default",
            "cabinet_url" => "/",
        );
    }

    protected function PrepareCache() {
        $this->params['cache'] = false;
        return false;
    }

    protected function GetParamsValidators() {
        return array();
    }

    protected function Action() {
        $result = array();
        $user = HolyUser::getInstance();
        if (!isset($_POST['login']))
            $_POST['login'] = "";
        if (!isset($_POST['pass']))
            $_POST['pass'] = "";
        if (!isset($this->params['cabinet_url']))
            $this->params['cabinet_url'] = "/";
        if (isset($_POST['submit'])) {
            if (isset($_POST['login']))
                if ($_POST['login'] == "")
                    $error[] = "Не введён логин";
            if (isset($_POST['pass']))
                if ($_POST['pass'] == "")
                    $error[] = "Не введён пароль";
        };
        if (($_POST['login'] != "") && ($_POST['pass'] != "")) {
            if ($_POST['submit'] == "Зарегистрироваться") {
                $valid = new HolyValidator(Array(
                            "login" => "E-mail",
                            "pass" => "пароль",
                        ));

                $valid->AddRule("not_empty", 'login')
                        ->AddRule("not_empty", 'pass')
                        ->AddRule("email", 'login')
                        ->AddRule("unique", 'login', Array(
                            "table" => "site_users",
                            "field" => "email",
                        ));

                $valid->Check($_POST);

                $errors = $valid->Complete();

                if ($errors === true) {
                    $user->AddUser($_POST['login'], $_POST['pass']);
                    $user->Auth($_POST['login'], $_POST['pass']);
                    Redirect($this->params['cabinet_url'], true);
                } else {
                    $error = $errors;
                }
            } else {
                if (!$user->Auth($_POST['login'], $_POST['pass']))
                    $error[] = "Неверный пароль или логин";
            }
        }

        if ($user->IsAuth())
            Redirect($this->params['cabinet_url'], true);

        if (isset($error)) {
            $result['errors'] = $error;
        }
        return $result;
    }

}

?>
