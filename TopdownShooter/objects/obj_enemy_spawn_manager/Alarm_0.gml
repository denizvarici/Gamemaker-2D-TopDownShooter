//if there is still enemies to spawn spawn them if not exit this alarm
if (global.enemy_to_spawn <= 0) {
    exit;
}
var random_x = random_range(0,room_width);
var random_y = random_range(0,room_height);
var _player_x = -50;
var _player_y = -50;
if (instance_exists(obj_player)) {
    _player_x = obj_player.x;
    _player_y = obj_player.y;
}
while (abs(random_x-_player_x) < spawn_offset_for_player && abs(random_y-_player_y) < spawn_offset_for_player) {
    random_x = random_range(0,room_width);
    random_y = random_range(0,room_height);
}

var enemy = instance_create_layer(random_x,random_y,"Instances",obj_enemy_classic);
enemy.image_xscale = 0.8;
enemy.image_yscale = 0.8;
global.enemy_to_spawn -=1;
alarm[0] = _spawn_per_frames;