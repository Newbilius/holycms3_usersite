<? if (!defined('HCMS')) die(); ?>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <link rel="icon" type="image/png" href="/favicon.png" />
        <meta name="keywords" content="<?= $_OPTIONS['keywords'] ?>" />
        <title><?= $_OPTIONS['site_title'] ?></title>
        <meta name="description" content="<?= $_OPTIONS['description'] ?>">
        <link href="/design/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="/design/css/main.css" rel="stylesheet">
        <script type="text/javascript" src="/engine/js/jquery.1.7.2.min.js"></script>
        <script type="text/javascript" src="/design/bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="/design/css/prettify.css">
        <script src="/design/js/prettify.js"></script>

        <link rel="alternate" type="application/atom+xml" title="Лента последних изменений" href="https://github.com/Newbilius.atom">

        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <script type="text/javascript" src="/engine/js/fancybox/jquery.mousewheel-3.0.4.pack.js"></script>
        <script type="text/javascript" src="/engine/js/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
        <link rel="stylesheet" type="text/css" href="/engine/js/fancybox/jquery.fancybox-1.3.4.css" media="screen" />
        <? PopUpImages(); ?>
        <?= $_OPTIONS['header_code'] ?>

    </head>