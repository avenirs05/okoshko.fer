<!DOCTYPE html>
<html lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title><?php echo $title; ?></title>
		<base href="<?php echo $server; ?>" />
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
</head>
<body>
    
<!--Header desktop-->
<div class="header-wrap container-fluid d-none d-lg-block">
    <div class="row">
        <div class="col">
            <a class="logo" href="<?= $server ?>">
                <img class="logo__img" src="<?= DIR_ACT_THEME ?>image/logo.png" height="90" alt="">
            </a>
            <div class="company-name">
                <div class="company-name__title"><?= $name ?></div>
                <div class="company-name__subtitle"><?= $subtitle ?></div>
            </div>
        </div>
        <div class="col">
            <div class="row">
                <div class="auth col">
                    <span class="enter">
                        <img class="auth__enter-img" src="<?= DIR_ACT_THEME ?>image/lock.svg" width="12" height="12" alt="">  
                        <a class="auth__enter-text" href="/user/login/" target="_blank"><?= $text_enter ?></a>&nbsp;&nbsp;
                    </span>
                    <a class="auth__reg-text" href="/user/register/" target="_blank"><?= $text_register ?></a>
                </div>
                <div class="cart col text-right">
                    <span class="cart__text"><?= $text_good_quantity ?>&nbsp;</span>
                    <span class="cart__quantity">0</span>
                    <img class="cart__img img-fluid" src="<?= DIR_ACT_THEME ?>image/cart.svg" width="25" height="25" alt=""> 
                </div>
            </div>
            <div class="row">
                <div class="connections col text-right">
                    <img class="connections__whatsapp-icon" src="<?= DIR_ACT_THEME ?>image/connect/whatsapp.svg" width="27" height="27" alt="">
                    <img class="connections__viber-icon" src="<?= DIR_ACT_THEME ?>image/connect/viber.png" width="25" height="25" alt="">
                    <img class="connections__telegram-icon" src="<?= DIR_ACT_THEME ?>image/connect/telegram.png" width="25" height="25" alt="">
                    <img class="connections__phone-icon" src="<?= DIR_ACT_THEME ?>image/connect/phone.svg" width="17" height="17" alt="">
                    <span class="connections__phone-text"><?= $phone_first ?></span>
                </div>
                <div class="w-100"></div>
                <div class="connections__phone-text col text-right"><?= $phone_second ?></div>
            </div>
        </div>
    </div>
</div>

<!-- Pushy Menu Mobile -->
<nav class="pushy pushy-left d-lg-none" data-focus="#first-link">
    <div class="pushy-content">
        <ul>
            <li class="">
                <span class="enter">
                    <img class="auth__enter-img auth__enter-img_mob" src="<?= DIR_ACT_THEME ?>image/lock-yellow.svg" width="12" height="12" alt="">  
                    <a class="auth__enter-text auth__enter-text_mob" href="/user/login/" target="_blank"><?= $text_enter ?></a>&nbsp;&nbsp;
                </span>
                <a class="auth__reg-text auth__reg-text_mob" href="/user/register/" target="_blank"><?= $text_register ?></a>
            </li>
            <li class="pushy-link"><a href="#"><?= $text_home ?></a></li>
            <li class="pushy-submenu">
                <button id="first-link"><?= $text_catalog ?></button>
                <ul>
                    <?php foreach ($categories as $category): ?>
                      <li class="pushy-link"><a href="<?= $category['href'] ?>"><?= $category['name'] ?></a></li>
                    <?php endforeach; ?>
                </ul>
            </li>
            <li class="pushy-link"><a href="#">Доставка</a></li>
            <li class="pushy-link"><a href="#">Оплата</a></li>
            <li class="pushy-link"><a href="#">Контакты</a></li>
        </ul>
    </div>
</nav>
<!-- Site Overlay Pushy Menu Mobile -->
<div class="site-overlay d-lg-none"></div>
<!-- Content Pushy Menu Mobile -->
<div id="container" class="d-lg-none">
    <!-- Menu Button -->
    <button class="header-mob d-flex menu-btn">
        &#9776; Меню
        <span class="header-mob__phone-text ml-auto"><?= $phone_first ?></span>  
        <a class="header-mob__cart-wrap" href="/cart">
            <span class="header-mob__quantity-goods text-danger">3</span>
            <img class="img-fluid" src="<?= DIR_ACT_THEME ?>image/cart-white.svg" width="30" height="30" alt=""> 
        </a>      
    </button>
</div>

<!--Menu desktop-->
<div class="menu-wrap container-fluid d-none d-lg-block">
    <div class="row">
        <div class="col">
            <ul class="menu nav">
                <li class="menu__item nav-item">
                    <a class="menu__nav-link nav-link" href="<?= $home ?>"><?= $text_home ?></a>
                </li>
                <div class="menu__item dropdown-wrap btn-group">
                    <button type="button" class="menu__btn-dropdown btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <?= $text_catalog ?>
                    </button>                  
                    <div class="dropdown-menu">
                        <?php foreach ($categories as $category): ?>
                            <a class="dropdown-menu__item dropdown-item" href="<?= $category['href'] ?>" target="_blank">
                                <?= $category['name'] ?>
                            </a>
                            <div class="dropdown-menu__divider dropdown-divider"></div>  
                         <?php endforeach; ?>
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
