//if enemy damaged player this alarm triggers
_canHit = true; // can hit to player again
if(_health <= 0){ //if enemies health below or equals 0 after damaged with it's power to player destroy itself
    create_coin();
    
    instance_destroy();
 
    //if this was the last enemy game is succeed
    check_if_level_succeded();
}