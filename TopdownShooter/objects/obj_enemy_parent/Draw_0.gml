draw_self();

//write enemies current health and power
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_custom_small);
draw_text_color(x-1,y+1,_health,c_black,c_black,c_black,c_black,1);
draw_set_font(fnt_custom_medium);
draw_set_halign(fa_left);
draw_set_valign(fa_top);