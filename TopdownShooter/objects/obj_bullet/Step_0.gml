speed = _speed; //built-in speed = _speed
direction = _dir; // built-in direction = _dir

//if bullet hits the wall make an effect and destroy bullet
if (place_meeting(x,y,tiles_col)) {
    effect_create_above(ef_smoke,x,y,.5,c_white);
    instance_destroy()
}