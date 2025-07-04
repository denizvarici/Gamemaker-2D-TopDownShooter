//if can hit to player
if (_canHit) {
    _canHit = false; // make canHit false
    _health-=1; //decrease enemie's health
    other._health-=_health+1; //decrease player health
    obj_player_damaged_effect.damage_alpha = 1; // show a damage effect
    if(other._health <= 0){ //if player is dead game is over.
        delete_save();
        reset_the_game_level_and_variables();
        room_goto(rm_mainmenu);
    }
    alarm[1] = _hit_cooldown; // start hit cooldown for canHit
}
