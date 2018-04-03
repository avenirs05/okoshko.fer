<?php //d($categories); ?>
<div class="tile-wrap container-fluid">
    <div class="row d-lg-none">
        <div class="col text-center">
            <img class="" src="<?php echo DIR_ACT_THEME; ?>image/logo.png" height="50" alt="">
        </div>
        <div class="w-100"></div>
        <div class="col">
            <h1 class="tile-wrap__title-mob text-center">Комплектующие для окон</h1>
        </div>
    </div>    
    <div class="row tile-row">
        <div class="tile-content d-flex flex-wrap col">
            <?php foreach ($categories as $category): ?>
                <div class="tile">
                    <div>
                        <img src="image/<?php echo $category['image']; ?>" alt="" class="tile__img img-fluid">
                    </div>
                    <div class="tile__link-content">
                        <a href="<?php echo $category['href']; ?>" class="tile__link"><?php echo $category['name']; ?></a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
    
</div>