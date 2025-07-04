//game succeeded wait a little while and
with(obj_coin){ //destroy all coins in the scene
    instance_destroy();
}
obj_gun_parent._canShoot = false;
setup_after_level_succeeded_show_shop_panel();
