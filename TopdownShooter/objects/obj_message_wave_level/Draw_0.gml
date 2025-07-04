draw_set_valign(fa_middle);
draw_set_halign(fa_center);

var level_string = "Seviye " + string(global.wave_level);
draw_text_color(room_width/2,room_height/2-50,level_string,c_blue,c_black,c_blue,c_black,1);

draw_set_valign(fa_top);
draw_set_halign(fa_left);