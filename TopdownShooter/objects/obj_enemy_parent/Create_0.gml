_dir = point_direction(x,y,obj_player.x,obj_player.y);//enemy direction 
image_angle = _dir + 90;
_canHit = true; //can enemy hit the player ?
_min_dist = irandom_range(20,100); //distance for keep enemy away from each other

function create_coin(){
    rand_coin_n = irandom_range(1,global.enemy_health);
    for (var i = 0; i < rand_coin_n; i++) {
        rand_x = x + random_range(-3,3);
        rand_y = y + random_range(-3,3);
        var coin = instance_create_layer(rand_x,rand_y,"Instances",obj_coin);
        coin.image_xscale = 0.03;
        coin.image_yscale = 0.03;
    }
}