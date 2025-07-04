gun_sprites_for_shop = [
    layer_sprite_get_id("ImageLayer", "graphic_36126367"),
    layer_sprite_get_id("ImageLayer", "graphic_23C0EAE2"),
    layer_sprite_get_id("ImageLayer", "graphic_3809449C"),
    layer_sprite_get_id("ImageLayer", "graphic_67ADCF8A")
];
for (var i = 0; i < 4; i++) {
    layer_sprite_alpha(gun_sprites_for_shop[i],0);
}

function show_bought_guns_sprites(){
    owned_guns = array_length(global.player_guns);
    for (var i = 0; i < owned_guns; i++) {
        layer_sprite_alpha(gun_sprites_for_shop[i],1);
    }
}

show_bought_guns_sprites();


