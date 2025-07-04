_gun_cost = calculate_gun_cost();
if (_gun_cost > 0) {
    draw_self();
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_font(fnt_custom_medium);
    draw_text_color(x,y+2,"KALEM AL " + string(_gun_cost) + "$",c_white,c_white,c_white,c_white,1);
    draw_set_font(fnt_custom_medium);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}else{
    draw_self();
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_font(fnt_custom_medium);
    draw_text_color(x,y,"MAX",c_white,c_white,c_white,c_white,1);
    draw_set_font(fnt_custom_medium);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}
