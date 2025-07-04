//enemy hit create a hit effect
effect_create_above(ef_flare,x,y,.5,c_white);

//destroy the bullet object (other)
instance_destroy(other);

//bullet hit makes enemy red and less alpha
image_blend = c_red;
image_alpha = 0.7;

//bullet hit effect change it back after 10 frames
alarm[0]=10;

//decrease enemy health
if(_health > 0){
    _health-=global.bullet_damage;
}
// if health below 0 after a bullet hit
if(_health<=0){
    create_coin(); //creates coin
    instance_destroy(self); //destroy the enemy itself

    //if level succeeded trigger alarm[1] on enemy_spawn_manager
    //which does a little latences for player can collect the coins on screen
    check_if_level_succeded();
}

