if(_collected){
    var _dir = point_direction(x,y,obj_player.x,obj_player.y);
    x+=lengthdir_x(attraction_speed,_dir);
    y+=lengthdir_y(attraction_speed,_dir);
    attraction_speed+=0.05;
    return;
}

if(instance_exists(obj_player) and _collected == false){
    if (point_distance(x,y,obj_player.x,obj_player.y) <= attraction_radius) {
        _collected = true;
    }
}

