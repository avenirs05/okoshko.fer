<!--Плитки на Главной-->
<div class="tile-wrap container-fluid">
    <!-- Mobile -->
    <div class="row d-lg-none">
        <div class="col text-center">
            <img class="" src="<?=DIR_ACT_THEME?>image/logo.png" height="50" alt="">
        </div>
        <div class="w-100"></div>
        <div class="col">
            <h1 class="tile-wrap__title-mob text-center"><?= $subtitle ?></h1>
        </div>
    </div>   
    <!-- Mobile and Desktop -->
    <div class="row tile-row">
        <div class="tile-content d-flex flex-wrap col">
            <?php foreach ($categories as $category): ?>
                <a href="<?= $category['href'] ?>" class="tile" target="_blank">
                    <div>
                        <img src="image/<?= $category['image'] ?>" alt="" class="tile__img img-fluid">
                    </div>
                    <div class="tile__link-content">
                        <span class="tile__link" target="_blank"><?= $category['name'] ?></span>
                    </div>
                </a>
            <?php endforeach; ?>
        </div>
    </div>    
</div>