draw_self();


if (_is_full_screen) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_custom_small);
    draw_set_color(c_black);
    draw_text(x,y+1.5,"X");
    draw_set_color(c_white);
    draw_set_font(fnt_custom_medium);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
