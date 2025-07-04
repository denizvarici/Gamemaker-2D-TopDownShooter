var _check = check_if_save_exists();
if (_check) {
    draw_self();
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_custom_big_minus);
    draw_set_color(c_black);
    draw_text(x,y,"DEVAM ET");
    draw_set_color(c_white);
    draw_set_font(fnt_custom_medium);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}