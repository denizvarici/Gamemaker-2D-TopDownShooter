if(global.player_collected_coin >= _upgrade_cost && _stat_level < _upgrade_var_max_level){
    global.player_collected_coin-=_upgrade_cost;
    after_buy_implement_upgrade(_upgrade_var);
    _upgrade_cost = calculate_upgrade_cost(_upgrade_var);
    _stat_level = get_stat_current_level(_upgrade_var);
    with (obj_shop_upgrade_text_parent) {
        reload_text();
    }
    
}
y = ystart + 2;
image_alpha = 0.8;
alarm[0] = 20;

