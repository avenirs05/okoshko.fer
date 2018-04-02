<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title><?php echo $title; ?></title>
		<base href="<?php echo $base; ?>" />
		<?php if ($description) { ?>
			<meta name="description" content="<?php echo $description; ?>" />
		<?php } ?>
		<?php if ($keywords) { ?>
			<meta name="keywords" content= "<?php echo $keywords; ?>" />
		<?php } ?>
		<meta property="og:title" content="<?php echo $title; ?>" />
		<meta property="og:type" content="website" />
		<meta property="og:url" content="<?php echo $og_url; ?>" />
		<?php if ($og_image) { ?>
			<meta property="og:image" content="<?php echo $og_image; ?>" />
		<?php } else { ?>
			<meta property="og:image" content="<?php echo $logo; ?>" />
		<?php } ?>
		<meta property="og:site_name" content="<?php echo $name; ?>" />
		<?php foreach ($styles as $style) { ?>
			<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
		<?php } ?>		
		<?php foreach ($links as $link) { ?>
			<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
		<?php } ?>
		<?php foreach ($analytics as $analytic) { ?>
			<?php echo $analytic; ?>
		<?php } ?>
</head>
<body>

<div class="header-wrap container-fluid d-none d-lg-block">
    <div class="row">
        <div class="col">
            <a class="logo" href="/">
                <img class="logo__img" src="/imgs/logo.png" height="90" alt="">
            </a>
            <div class="company-name">
                <div class="company-name__title">Моё окошко</div>
                <div class="company-name__subtitle">Комплектующие для окон</div>
            </div>
        </div>
        <div class="col">
            <div class="row">
                <div class="auth col">
                    <span class="enter">
                        <img class="auth__enter-img" src="imgs/lock.svg" width="12" height="12" alt="">  
                        <a class="auth__enter-text" href="/user/login/" target="_blank">Вход</a>&nbsp;&nbsp;
                    </span>
                    <a class="auth__reg-text" href="/user/register/" target="_blank">Регистрация</a>
                </div>
                <div class="cart col text-right">
                    <span class="cart__text">Товаров в корзине:&nbsp;</span>
                    <span class="cart__quantity">0</span>
                    <img class="cart__img img-fluid" src="/imgs/cart.svg" width="25" height="25" alt=""> 
                </div>
            </div>
            <div class="row">
                <div class="connections col text-right">
                    <img class="connections__whatsapp-icon " src="/imgs/connect/whatsapp.svg" width="27" height="27" alt="">
                    <img class="connections__viber-icon " src="/imgs/connect/viber.png" width="25" height="25" alt="">
                    <img class="connections__telegram-icon " src="/imgs/connect/telegram.png" width="25" height="25" alt="">
                    <img class="connections__phone-icon " src="/imgs/connect/phone.svg" width="17" height="17" alt="">
                    <span class="connections__phone-text">+7 (495) 999-18-14</span>
                </div>
                <div class="w-100"></div>
                <div class="connections__phone-text col text-right">+7 (495) 999-18-14</div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid d-none d-lg-block">
    <div class="row">
        <div class="col">
            <ul class="menu nav">
                <li class="menu__item nav-item">
                    <a class="menu__nav-link nav-link" href="/home">Главная</a>
                </li>
                <div class="menu__item dropdown-wrap btn-group">
                    <button type="button" class="menu__btn-dropdown btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Каталог</button>
                    <div class="dropdown-menu">
                        <a class="dropdown-menu__item dropdown-item" href="/otkos/calc" target="_blank">Откосы</a>
                        <div class="dropdown-menu__divider dropdown-divider"></div>                                 
                        <a class="dropdown-menu__item dropdown-item" href="/moskit/calc" target="_blank">Москитные сетки</a>
                        <div class="dropdown-menu__divider dropdown-divider"></div>                    
                        <a class="dropdown-menu__item dropdown-item" href="#" target="_blank">Подоконники / Ремонтные накладки</a>
                        <div class="dropdown-menu__divider dropdown-divider"></div>                  
                        <a class="dropdown-menu__item dropdown-item" href="#" target="_blank">Материалы для монтажа</a>
                        <div class="dropdown-menu__divider dropdown-divider"></div>  
                        <a class="dropdown-menu__item dropdown-item" href="#" target="_blank">Уплотнители</a>
                        <div class="dropdown-menu__divider dropdown-divider"></div>  
                        <a class="dropdown-menu__item dropdown-item" href="#" target="_blank">Фурнитура / Ручки / Накладки</a>
                        <div class="dropdown-menu__divider dropdown-divider"></div>  
                        <a class="dropdown-menu__item dropdown-item" href="#" target="_blank">Отливы / Козырьки</a>
                        <div class="dropdown-menu__divider dropdown-divider"></div>  
                        <a class="dropdown-menu__item dropdown-item" href="#" target="_blank">Панели ПВХ / Сайдинг / Ламинат</a>
                        <div class="dropdown-menu__divider dropdown-divider"></div>  
                        <a class="dropdown-menu__item dropdown-item" href="#" target="_blank">Пиломатериалы</a>
                        <div class="dropdown-menu__divider dropdown-divider"></div>  
                    </div>
                </div>        
                <li class="menu__item nav-item">
                    <a class="menu__nav-link nav-link" href="/delivery" target="_blank">Доставка</a>
                </li>
                <li class="menu__item nav-item">
                    <a class="menu__nav-link nav-link" href="/payment" target="_blank">Оплата</a>
                </li>
                <li class="menu__item nav-item">
                    <a class="menu__nav-link nav-link" href="/contacts" target="_blank">Контакты</a>
                </li>
            </ul>
        </div>
    </div>
</div>

<div class="tile-wrap container-fluid">
    <div class="row d-lg-none">
        <div class="col text-center">
            <img class="" src="/imgs/logo.png" height="50" alt="">
        </div>
        <div class="w-100"></div>
        <div class="col">
            <h1 class="tile-wrap__title-mob text-center">Комплектующие для окон</h1>
        </div>
    </div> 
    <div class="row tile-row">
        <div class="tile-wrap d-flex flex-wrap col">
            <div class="tile">
                <div>
                    <img src="imgs/tiles/otkosi.jpg" alt="" class="tile__img img-fluid">
                </div>
                <div class="tile__link-content">
                    <a href="#" class="tile__link">Откосы</a>
                </div>
            </div>
            <div class="tile">      
                <div>
                    <img src="imgs/tiles/moskitka.jpg" alt="" class="tile__img img-fluid">
                </div>
                <div class="tile__link-content">
                    <a href="#" class="tile__link">Москитные сетки</a>
                </div>   
            </div>
            <div class="tile">
                <div>
                    <img src="imgs/tiles/podokonniki.jpg" alt="" class="tile__img img-fluid">
                </div>
                <div class="tile__link-content">
                    <a href="#" class="tile__link">Подоконники <br>Ремонтные накладки</a>
                </div>
            </div>
            <div class="tile">
                <div>
                    <img src="imgs/tiles/materials.jpg" alt="" class="tile__img img-fluid">
                </div>
                <div class="tile__link-content">
                    <a href="#" class="tile__link">Материалы для монтажа</a>
                </div>  
            </div>
            <div class="tile">
                <div>
                    <img src="imgs/tiles/uplotniteli.jpg" alt="" class="tile__img img-fluid">
                </div>
                <div class="tile__link-content">
                    <a href="#" class="tile__link">Уплотнители</a>
                </div>
            </div>
            <div class="tile">      
                <div>
                    <img src="imgs/tiles/furnitura.jpg" alt="" class="tile__img img-fluid">
                </div>
                <div class="tile__link-content">
                    <a href="#" class="tile__link">Фурнитура<br>Ручки / Накладки</a>
                </div>   
            </div>
            <div class="tile">
                <div>
                    <img src="imgs/tiles/otlivi.jpg" alt="" class="tile__img img-fluid">
                </div>
                <div class="tile__link-content">
                    <a href="#" class="tile__link">Отливы / Козырьки</a>
                </div>
            </div>
            <div class="tile">
                <div>
                    <img src="imgs/tiles/paneli-pvh.jpg" alt="" class="tile__img img-fluid">
                </div>
                <div class="tile__link-content">
                    <a href="#" class="tile__link">Панели ПВХ<br>Сайдинг / Ламинат</a>
                </div>  
            </div>
            <div class="tile">
                <div>
                    <img src="imgs/tiles/pilomaterialy.jpg" alt="" class="tile__img img-fluid">
                </div>
                <div class="tile__link-content">
                    <a href="#" class="tile__link">Пиломатериалы</a>
                </div>  
            </div>
        </div>
    </div>
</div>

