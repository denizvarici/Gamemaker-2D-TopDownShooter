draw_self();
//Draw player health NUMBER and ICON
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_custom_very_small);
draw_sprite_ext(spr_health_icon,0,x-8,y-21,.42,.42,0,c_white,1);
draw_text_color(x+3,y-20,_health,c_black,c_black,c_black,c_black,1);
draw_set_font(fnt_custom_medium);
draw_set_halign(fa_left);
draw_set_valign(fa_top);