// when alarm is triggered create a bullet object and 
if (_canShoot) {
    var bullet = instance_create_layer(x,y,"Instances",obj_bullet);
    bullet.image_xscale = 0.7;
    bullet.image_yscale = 0.7;
    bullet.image_angle = _angle;
    bullet._dir = _angle;
}

alarm[0] = gun_cooldown // set alarm again to trigger again itself