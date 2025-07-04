draw_set_color(make_color_rgb(255, 0, 0)); // Kırmızı renk
draw_set_alpha(damage_alpha); // Şeffaflık uygula
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1); // Normal çizime geri dön
draw_set_color(c_white);