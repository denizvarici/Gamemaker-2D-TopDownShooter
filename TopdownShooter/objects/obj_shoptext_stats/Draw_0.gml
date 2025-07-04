var player_speed = global.player_speed;
var player_speed_lvl = global.player_speed_lvl;
var player_health = global.player_health;
var player_health_lvl = global.player_health_lvl;
var bullet_speed = global.bullet_speed;
var bullet_speed_lvl = global.bullet_speed_lvl;
var bullet_damage = global.bullet_damage;
var bullet_damage_lvl = global.bullet_damage_lvl;
var gun_cooldown = global.gun_cooldown;
var gun_cooldown_lvl = global.gun_cooldown_lvl;


draw_set_color(make_color_rgb(160,65,13));
draw_rectangle(x-90, y, x+110, y+140, true);
draw_rectangle(x-88, y+2, x+108, y+138, false)
draw_set_color(c_white);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(fnt_custom_medium);
draw_text(x+10,y+20,"OYUNCU ISTATISTIKLERI");
draw_set_font(fnt_custom_very_small);

//CAN
draw_sprite_ext(spr_health_icon,0,x-30,y+40,1,1,0,c_white,1);
draw_text(x+15,y+42,"SAGLIK : " + string(global.player_health));
//PLAYER HIZI
draw_sprite_ext(spr_player_speed_icon,0,x-30,y+60,1,1,0,c_white,1);
draw_text(x+25,y+62,"HIZ : " + string(global.player_speed) + "/sn");
//KALEM UCU HIZI
draw_sprite_ext(spr_bullet_speed_icon,0,x-30,y+80,1,1,0,c_white,1);
draw_text(x+35,y+82,"UC HIZI : " + string(global.bullet_speed) + "/sn");
//KALEM UCU HASARI
draw_sprite_ext(spr_bullet_damage_icon,0,x-30,y+100,1,1,0,c_white,1);
draw_text(x+20,y+102,"UC HASARI : " + string(global.bullet_damage));
//KALEM UCU HASARI
draw_sprite_ext(spr_gun_cooldown,0,x-30,y+120,1,1,0,c_white,1);
draw_text(x+30,y+122,"UC SIKLIGI : " + string(global.gun_cooldown/60) + "/sn");



draw_set_font(fnt_custom_medium);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
