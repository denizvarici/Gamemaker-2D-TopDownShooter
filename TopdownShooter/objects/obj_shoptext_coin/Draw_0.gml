draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(_font);
draw_sprite_ext(spr_coin_extra,0,x-12.5,y,0.1,0.1,0,c_white,1);
draw_text_color(x,y,_static_text + string(global.player_collected_coin) + "$",_text_color,_text_color,_text_color,_text_color,1);
draw_set_font(fnt_custom_medium);
draw_set_valign(fa_top);
draw_set_halign(fa_left);