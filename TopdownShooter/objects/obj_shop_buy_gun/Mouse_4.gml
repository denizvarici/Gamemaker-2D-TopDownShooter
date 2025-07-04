if(_gun_cost > 0){
    if (global.player_collected_coin >= _gun_cost) {
        global.player_collected_coin-=_gun_cost;
        _gun_cost = calculate_gun_cost();
        //layer_force_draw_depth(true,1);
        add_new_gun_to_inventory();
        show_bought_guns_sprites();
    }
}