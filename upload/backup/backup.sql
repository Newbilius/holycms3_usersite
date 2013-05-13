DROP TABLE IF EXISTS cms_options;
CREATE TABLE `cms_options` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text NOT NULL,  `caption` text NOT NULL,  `sort` int(11) NOT NULL,  `parent` int(11) NOT NULL,  `folder` int(11) NOT NULL,  `opt_block` text NOT NULL,  `opt_sort` text NOT NULL,  `opt_by` text NOT NULL,  `opt_count` int(11) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO cms_options VALUES("1","journal","journal","100","0","0","journal","date_time","DESC","10");
DROP TABLE IF EXISTS journal;
CREATE TABLE `journal` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text NOT NULL,  `caption` text NOT NULL,  `sort` int(11) NOT NULL,  `parent` int(11) NOT NULL,  `folder` int(11) NOT NULL,  `user_id` text NOT NULL,  `block_name` text NOT NULL,  `item_id` int(11) NOT NULL,  `action` text NOT NULL,  `data_after` longtext NOT NULL,  `data_before` longtext NOT NULL,  `date_time` datetime NOT NULL,  `data_caption` text NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS modules;
CREATE TABLE `modules` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text NOT NULL,  `caption` text NOT NULL,  `sort` int(11) NOT NULL,  `parent` int(11) NOT NULL,  `folder` int(11) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
INSERT INTO modules VALUES("1","empty","Текстовая страница","100","0","0");
INSERT INTO modules VALUES("15","ajax_social_reg","Регистрация через социальные сети","200","0","0");
INSERT INTO modules VALUES("16","rec_pass","Восстановление пароля","300","0","0");
INSERT INTO modules VALUES("17","rec_pass_complete","Восстановление пароля завершение","400","0","0");
INSERT INTO modules VALUES("18","cabinet","Личный кабинет пользователя","500","0","0");
INSERT INTO modules VALUES("19","main_page","Главная страница","600","0","0");
DROP TABLE IF EXISTS options;
CREATE TABLE `options` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text NOT NULL,  `caption` text NOT NULL,  `sort` int(11) NOT NULL,  `parent` int(11) NOT NULL,  `folder` int(11) NOT NULL,  `hvalue` text NOT NULL,  `options_class` text NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
INSERT INTO options VALUES("1","site_title","Название сайта","100","14","0","Название сайта","1");
INSERT INTO options VALUES("2","keywords","Ключевые слова","200","14","0","ключевые по-умолчанию","2");
INSERT INTO options VALUES("14","seo","SEO","50","0","1","","");
INSERT INTO options VALUES("6","description","description","300","14","0","описание по-умолчанию","2");
INSERT INTO options VALUES("7","f_bread","Самая первая хлебная крошка","20","0","0","Главная","1");
INSERT INTO options VALUES("11","counters","Счетчики","10","0","0","[счетчики]","2");
INSERT INTO options VALUES("19","mail","Адрес электронной почты","30","0","0","demo@mail.ru","1");
INSERT INTO options VALUES("20","header_code","Текст в конце header","1400","14","0","","2");
INSERT INTO options VALUES("21","footer_code","Текст в конце footer","1500","14","0","","2");
DROP TABLE IF EXISTS options_class;
CREATE TABLE `options_class` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text NOT NULL,  `caption` text NOT NULL,  `sort` int(11) NOT NULL,  `parent` int(11) NOT NULL,  `folder` int(11) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO options_class VALUES("1","text","Текстовая строка","100","0","0");
INSERT INTO options_class VALUES("2","text2","Текстовой редактор","200","0","0");
INSERT INTO options_class VALUES("3","wis","Визуальный редактор","300","0","0");
INSERT INTO options_class VALUES("4","check","Чекбокс","400","0","0");
INSERT INTO options_class VALUES("5","pic","Картинка","500","0","0");
INSERT INTO options_class VALUES("6","file","Файл","600","0","0");
DROP TABLE IF EXISTS pages;
CREATE TABLE `pages` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text NOT NULL,  `caption` text NOT NULL,  `sort` int(11) NOT NULL,  `parent` int(11) NOT NULL,  `folder` int(11) NOT NULL,  `keywords` text NOT NULL,  `template` int(11) NOT NULL,  `detail_text` text NOT NULL,  `in_menu` smallint(6) NOT NULL,  `human_url` smallint(6) NOT NULL,  `not_visible` smallint(6) NOT NULL,  `modules` text NOT NULL,  `not_in_bread` smallint(6) NOT NULL,  `caption2` text NOT NULL,  `description` text NOT NULL,  `redirect` text NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
INSERT INTO pages VALUES("1","index","Главная","10","0","1","","1","<p>\r\n	Текст первой страницы.</p>\r\n","1","0","0","main_page","0","","","");
INSERT INTO pages VALUES("2","e404","404","1600","0","1","","1","<p>\r\n	Ошибка 404. Блин.&nbsp;</p>\r\n","0","0","0","empty","1","","","");
INSERT INTO pages VALUES("40","recovery_pass","Восстановление пароля","2000","0","1","","5","","0","0","0","rec_pass","0","","","");
INSERT INTO pages VALUES("41","recovery_pass_complete","Восстановление пароля - завершение","2100","0","1","","5","","0","0","0","rec_pass_complete","0","","","");
INSERT INTO pages VALUES("38","ajax","ajax","1800","0","1","","2","","0","0","0","empty","0","","","");
INSERT INTO pages VALUES("39","ajax_social_reg","ajax_social_reg","1900","38","1","","5","","0","0","0","ajax_social_reg","0","","","");
INSERT INTO pages VALUES("42","cabinet","Личный кабинет","2200","0","1","","5","","0","0","0","cabinet","0","","","");
DROP TABLE IF EXISTS site_users;
CREATE TABLE `site_users` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text CHARACTER SET utf8 NOT NULL,  `caption` text CHARACTER SET utf8 NOT NULL,  `sort` int(11) NOT NULL,  `parent` int(11) NOT NULL,  `folder` int(11) NOT NULL,  `email` text CHARACTER SET utf8 NOT NULL,  `uid` text CHARACTER SET utf8 NOT NULL,  `password` text CHARACTER SET utf8 NOT NULL,  `uic_rec` text CHARACTER SET utf8 NOT NULL,  `socials` text CHARACTER SET utf8 NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=cp1251;
DROP TABLE IF EXISTS system_cache;
CREATE TABLE `system_cache` (  `id` varchar(255) NOT NULL,  `value` text NOT NULL,  `time` int(11) NOT NULL,  `module` text NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS system_data_block;
CREATE TABLE `system_data_block` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text NOT NULL,  `bgroup` int(11) NOT NULL,  `caption` text NOT NULL,  `sort` int(11) NOT NULL,  `fav` tinyint(1) NOT NULL,  `hide_folders` tinyint(1) NOT NULL,  `hide_folders2` tinyint(1) NOT NULL,  `hide_code` tinyint(1) NOT NULL,  `childs` text NOT NULL,  `meta` int(11) NOT NULL,  `bind_cache` text NOT NULL,  PRIMARY KEY (`id`),  UNIQUE KEY `name` (`name`(255))) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
INSERT INTO system_data_block VALUES("12","templates","1","Шаблоны","600","0","1","0","0","","0","");
INSERT INTO system_data_block VALUES("11","pages","15","Страницы","300","1","0","0","0","","0","");
INSERT INTO system_data_block VALUES("8","users","1","Пользователи","200","0","1","0","1","","0","");
INSERT INTO system_data_block VALUES("7","options","1","Настройки","100","0","0","1","0","","0","");
INSERT INTO system_data_block VALUES("17","modules","1","Модули сайта","800","0","1","0","0","","0","");
INSERT INTO system_data_block VALUES("24","cms_options","1","Настройки админки","1200","0","1","0","0","","0","");
INSERT INTO system_data_block VALUES("27","options_class","1","Типы полей настроек сайта","1500","0","1","0","0","","0","");
INSERT INTO system_data_block VALUES("40","journal","1","Журнал","2100","0","1","1","1","","0","");
INSERT INTO system_data_block VALUES("42","system_user_groups","1","Группы пользователей","2300","0","1","1","0","","0","");
INSERT INTO system_data_block VALUES("43","site_users","15","Пользователи сайта","2800","0","1","1","1","","0","");
DROP TABLE IF EXISTS system_data_block_fields;
CREATE TABLE `system_data_block_fields` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `data_block` int(11) NOT NULL,  `name` tinytext NOT NULL,  `caption` tinytext NOT NULL,  `type` int(11) NOT NULL,  `sort` int(11) NOT NULL,  `required` tinyint(4) NOT NULL,  `multiple` tinyint(4) NOT NULL,  `dgroup` int(11) NOT NULL,  `owner_type` tinyint(4) NOT NULL,  `add_values` text NOT NULL,  `not_list` tinyint(4) NOT NULL,  `admin_only` tinyint(4) NOT NULL,  `meta` tinyint(4) NOT NULL,  `not_element` tinyint(1) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;
INSERT INTO system_data_block_fields VALUES("24","8","email","E-mail","1","900","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("55","8","block_control","Имеет доступ к настройкам блоков","7","2600","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("54","11","modules","Модуль сайта","15","1410","0","0","0","1","modules;name;caption","0","1","0","0");
INSERT INTO system_data_block_fields VALUES("78","8","pass","Пароль","13","120","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("18","8","login","Логин","1","100","1","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("51","11","human_url","ЧПУ","7","1900","0","0","0","1","","1","1","0","0");
INSERT INTO system_data_block_fields VALUES("52","11","not_visible","Невидимость","7","1420","0","0","0","1","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("30","7","hvalue","Значение","5","200","0","0","0","0","","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("46","11","keywords","Ключевые слова","1","1400","0","0","0","1","","1","0","1","0");
INSERT INTO system_data_block_fields VALUES("47","11","template","Шаблон","15","1400","0","0","0","1","templates;id;caption","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("49","11","detail_text","Текст страницы","5","2500","0","0","0","1","","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("50","11","in_menu","Попадает в меню","7","1800","0","0","0","1","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("72","11","not_in_bread","НЕ попадает в навигационную строку","7","1850","0","0","0","1","","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("86","24","opt_block","Блок","1","4500","0","0","0","0","system_data_block;id;caption","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("87","24","opt_sort","Сортировка","1","4600","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("88","24","opt_by","Направление сортировки","1","4700","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("89","24","opt_count","Число элементов","1","4800","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("91","11","caption2","title","1","10","0","0","0","1","","1","0","1","0");
INSERT INTO system_data_block_fields VALUES("92","11","description","description","4","20","0","0","0","1","","1","0","1","0");
INSERT INTO system_data_block_fields VALUES("99","11","redirect","Переход вместо страницы","1","2450","0","0","0","1","","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("104","7","options_class","options_class","15","5600","0","0","0","0","options_class;id;caption","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("117","28","caption2","Заголовок","1","6500","0","0","0","1","","1","0","1","0");
INSERT INTO system_data_block_fields VALUES("116","28","detail_text","Детальный текст","5","6400","0","0","0","0","","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("109","35","pic2","pic2","6","6100","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("139","37","other","Подобные товары","8","8700","0","1","0","0","catalog;id;caption","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("115","28","preview_text","Краткий текст","4","6300","0","0","0","0","","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("140","28","sdate","Дата","11","10","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("118","28","description","Description","4","6600","0","0","0","1","","1","0","1","0");
INSERT INTO system_data_block_fields VALUES("119","28","keywords","Ключевые слова","4","6700","0","0","0","1","","1","0","1","0");
INSERT INTO system_data_block_fields VALUES("120","36","url","Ссылка","1","6800","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("121","36","foto","Картинка","6","6900","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("122","37","detail_text","Детальный текст","5","7000","0","0","0","0","","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("123","37","cost","Цена","3","7100","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("124","37","foto","Фото","6","7200","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("125","37","foto_multi","Дополнительные фото","6","7300","0","1","0","0","","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("126","37","spec1","Спец-предложение","7","7400","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("127","38","foto","Фото","6","7500","0","0","0","1","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("128","39","fio","ФИО","1","7600","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("155","39","uic_rec","uic_rec","1","10000","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("130","39","email","Электронная почта","1","7800","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("154","39","password","Пароль","13","9900","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("133","39","address","Адрес доставки","4","8100","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("135","39","uid","uid","1","8300","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("136","37","caption2","Заголовок","1","8400","0","0","0","1","","1","0","1","0");
INSERT INTO system_data_block_fields VALUES("137","37","description","Description","4","8500","0","0","0","1","","1","0","1","0");
INSERT INTO system_data_block_fields VALUES("138","37","keywords","Ключевые слова","4","8600","0","0","0","1","","1","0","1","0");
INSERT INTO system_data_block_fields VALUES("141","40","user_id","user_id","15","8800","0","0","0","0","users;id;login","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("142","40","block_name","block_name","1","8900","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("143","40","item_id","item_id","2","9000","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("144","40","action","action","1","9100","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("148","40","data_before","data_before","4","9300","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("147","40","data_after","data_after","4","9200","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("149","40","folder","folder","7","9400","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("150","40","date_time","date_time","12","9500","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("151","41","test0","test0","16","9600","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("153","28","foto","Фото","6","9800","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("156","37","tags","Тэги","14","10100","0","0","0","0","catalog;tags","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("162","42","read","Права на чтение","17","10500","0","0","0","0","system_data_block;name;caption","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("163","42","add","Права на создание","17","10600","0","0","0","0","system_data_block;name;caption","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("164","42","edit","Права на редактирование","17","10700","0","0","0","0","system_data_block;name;caption","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("165","42","delete","Права на удаление","17","10800","0","0","0","0","system_data_block;name;caption","1","0","0","0");
INSERT INTO system_data_block_fields VALUES("166","8","group","Группа пользователя","15","2900","0","0","0","0","system_user_groups;id;caption","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("167","8","uid","uid","1","0","0","1","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("168","40","data_caption","data_caption","1","10900","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("169","0","email","Электронная почта","1","12200","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("170","0","uid","uid","1","12300","0","1","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("171","0","password","Пароль","13","12400","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("172","0","uic_rec","uic_rec","1","12500","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("173","0","socials","socials","1","12600","0","1","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("174","0","hide_complete","hide_complete","7","13400","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("175","43","email","Электронная почта","1","12200","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("176","43","uid","uid","1","12300","0","1","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("177","43","password","Пароль","13","12400","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("178","43","uic_rec","uic_rec","1","12500","0","0","0","0","","0","0","0","0");
INSERT INTO system_data_block_fields VALUES("179","43","socials","socials","1","12600","0","1","0","0","","0","0","0","0");
DROP TABLE IF EXISTS system_data_block_group;
CREATE TABLE `system_data_block_group` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `caption` tinytext NOT NULL,  `sort` int(11) NOT NULL,  `name` text NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
INSERT INTO system_data_block_group VALUES("1","Системные","300","system");
INSERT INTO system_data_block_group VALUES("15","Блоки сайта","50","main");
DROP TABLE IF EXISTS system_data_block_types;
CREATE TABLE `system_data_block_types` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` tinytext NOT NULL,  `caption` tinytext NOT NULL,  `basetype` tinytext NOT NULL,  `sort` int(11) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
INSERT INTO system_data_block_types VALUES("1","short_text","Текстовая строка","TEXT","100");
INSERT INTO system_data_block_types VALUES("2","integ","Целое число","INT","200");
INSERT INTO system_data_block_types VALUES("3","double_integ","Дробное число","DOUBLE","300");
INSERT INTO system_data_block_types VALUES("4","wysiwyg_text","Редактор текста","LONGTEXT","400");
INSERT INTO system_data_block_types VALUES("5","wysiwyg_html","Визуальный редактор текста","LONGTEXT","500");
INSERT INTO system_data_block_types VALUES("6","image","Картинка","TEXT","700");
INSERT INTO system_data_block_types VALUES("7","checkbox","Галочка","SMALLINT","800");
INSERT INTO system_data_block_types VALUES("8","list","Выпадающий список","TEXT","1000");
INSERT INTO system_data_block_types VALUES("9","element","Привязка к папке","INT","1100");
INSERT INTO system_data_block_types VALUES("10","folder","Привязка к элементу","INT","1200");
INSERT INTO system_data_block_types VALUES("11","ddate","Дата","DATE","1300");
INSERT INTO system_data_block_types VALUES("12","ddatetime","Дата и время","DATETIME","1400");
INSERT INTO system_data_block_types VALUES("13","pass","Пароль","TEXT","1500");
INSERT INTO system_data_block_types VALUES("14","tags","Тэги","TEXT","5000");
INSERT INTO system_data_block_types VALUES("15","list_need","Выпадающий список обяз.","TEXT","1005");
INSERT INTO system_data_block_types VALUES("16","file","Файл","TEXT","9000");
INSERT INTO system_data_block_types VALUES("17","list_max","Выпадающий список множественный","TEXT","1001");
INSERT INTO system_data_block_types VALUES("18","image_multiple","Множественная загрузка картинок","TEXT","5100");
INSERT INTO system_data_block_types VALUES("19","file_multiple","Множественная загрузка файлов","TEXT","5200");
INSERT INTO system_data_block_types VALUES("20","hidden","Скрытое поле","TEXT","9200");
DROP TABLE IF EXISTS system_user_groups;
CREATE TABLE `system_user_groups` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text NOT NULL,  `caption` text NOT NULL,  `sort` int(11) NOT NULL,  `parent` int(11) NOT NULL,  `folder` int(11) NOT NULL,  `read` text NOT NULL,  `add` text NOT NULL,  `edit` text NOT NULL,  `delete` text NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
INSERT INTO system_user_groups VALUES("1","admin","Администраторы","100","0","0","options;users;pages;templates;modules;cms_options;options_class;journal;system_user_groups","options;users;pages;templates;modules;cms_options;options_class;journal;system_user_groups","options;users;pages;templates;modules;cms_options;options_class;journal;system_user_groups","options;users;pages;templates;modules;cms_options;options_class;journal;system_user_groups");
INSERT INTO system_user_groups VALUES("2","redaktor","Редактор","200","0","0","pages;system_user_groups;options;users;templates;modules;cms_options;options_class;journal","pages;system_user_groups;options;users;templates;modules;cms_options;options_class;journal","pages;system_user_groups;options;users;templates;modules;cms_options;options_class;journal","pages;system_user_groups;options;users;templates;modules;cms_options;options_class;journal");
DROP TABLE IF EXISTS templates;
CREATE TABLE `templates` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text NOT NULL,  `caption` text NOT NULL,  `sort` int(11) NOT NULL,  `parent` int(11) NOT NULL,  `folder` int(11) NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
INSERT INTO templates VALUES("1","main","Основной шаблон","20","0","0");
INSERT INTO templates VALUES("2","empty","Пустой","30","0","0");
INSERT INTO templates VALUES("5","_","[наследуемый]","10","0","0");
DROP TABLE IF EXISTS users;
CREATE TABLE `users` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `name` text NOT NULL,  `caption` text NOT NULL,  `sort` int(11) NOT NULL,  `parent` int(11) NOT NULL,  `folder` int(11) NOT NULL,  `login` text NOT NULL,  `email` text NOT NULL,  `block_control` smallint(6) NOT NULL,  `pass` text NOT NULL,  `uid` tinytext NOT NULL,  `group` text NOT NULL,  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
INSERT INTO users VALUES("1","administrator_sayta","Администратор сайта","200","0","0","admin","dima.am@mail.ru","1","21232f297a57a5a743894a0e4a801fc3","e824699672ce057dfeb6b06227392876;a1f45d707c5eaa72879aacce4e97a61e","1");
INSERT INTO users VALUES("3","editor","editor","400","0","0","editor","dima.am@mail.ru","0","5aee9dbd2a188839105073571bee1b1f","","2");
