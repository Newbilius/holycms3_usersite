<? if (!defined('HCMS')) die(); ?>
<? View::Factory("templates/global_header")->Set("_OPTIONS", $_OPTIONS)->Draw();?>
<body>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
<?= $CONTENT ?>
                </div>
            </div>
        </div>
</body>
</html>
<?=$_OPTIONS['footer_code']?>