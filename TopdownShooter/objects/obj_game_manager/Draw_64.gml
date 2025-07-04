draw_set_font(fnt_custom_small);
draw_text(32, 32*1, "FPS = " + string(fps));

draw_text(32,32*2,"EnemyCount = " + string(instance_number(obj_enemy_parent)));

draw_text(32,32*3,"Wave Level = " + string(global.wave_level));

draw_text(32,32*4,"Spawn Left = " + string(global.enemy_to_spawn));

draw_text_color(32,32*5,"COIN = " + string(global.player_collected_coin),c_yellow,c_yellow,c_yellow,c_yellow,1);
draw_set_font(fnt_custom_medium);