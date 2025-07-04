


function check_if_level_succeded(){
    if(global.enemy_to_spawn <= 0){
        if (instance_number(obj_enemy_parent) <=0) {
            obj_gun_parent._canShoot=false;
            obj_enemy_spawn_manager.alarm[1] = obj_enemy_spawn_manager._game_succeed_continue_nextwave_timer;
        }
    }
}

function setup_after_level_succeeded_show_shop_panel(){
    room_goto(rm_shop);
}



function setup_the_game_level_and_variables(){
    global.wave_level += 1;
    global.enemy_to_spawn = global.wave_level*global.enemy_to_spawn_multiplier;
    global.enemy_to_spawn += irandom_range(0,10);
    show_debug_message("Enemy to spawn this level : " + string(global.enemy_to_spawn));
    global.enemy_health = global.wave_level;
    global.enemy_speed = clamp(global.wave_level * global.enemy_speed_multiplier,0,2.5)
    global.enemy_damage = global.wave_level;
    show_debug_message("Wave level : " + string(global.wave_level));
    global.spawn_enemy_per_frames = clamp(1 + (global.wave_level - 1) * 10, 1, 10);
    show_debug_message("Enemies will spawn every this frame : " + string(global.spawn_enemy_per_frames));
    obj_enemy_spawn_manager._spawn_per_frames = global.spawn_enemy_per_frames;
    instance_create_layer(0,0,"Instances",obj_message_wave_level);
}


