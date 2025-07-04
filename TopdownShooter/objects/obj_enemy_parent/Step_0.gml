//if enemy damaged to player waits and slides a bit
if(alarm[1] > 0){
    // enemy slides
    x+= lengthdir_x(_speed * 0.5,_dir + 180);
    y+= lengthdir_y(_speed * 0.5,_dir + 180);
}else{
    // move to player smoothly
    if (instance_exists(obj_player)) {
        var target_dir = point_direction(x, y, obj_player.x, obj_player.y);
        _dir = lerp(_dir, target_dir, 0.1);
        var target_image_angle = target_dir - 90;
        var diff = angle_difference(image_angle, target_image_angle);
        image_angle += sign(diff) * 1;
        x += lengthdir_x(_speed, target_dir);
        y += lengthdir_y(_speed, target_dir);
    } else {
        // Oyuncu yoksa rastgele hareket et
        var random_dir = random_range(0, 360);
        x += lengthdir_x(_speed * 0.5, random_dir);
        y += lengthdir_y(_speed * 0.5, random_dir);
    }
    

}
// Enemys dont get close to each other with this block of code
with (obj_enemy_parent) {
    if (id != other.id) { //everyones check themselves
        var dist = point_distance(x, y, other.x, other.y);
        if (dist < _min_dist) {
            var avoid_dir = point_direction(other.x, other.y, x, y);
            x += lengthdir_x((_min_dist - dist) * 0.1, avoid_dir);
            y += lengthdir_y((_min_dist - dist) * 0.1, avoid_dir);
        }
    }
}


