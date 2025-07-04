//look at mouse for aiming for PC
var _mouse_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
var _final_angle = _mouse_angle + angle_offset;
x = obj_player.x + lengthdir_x(_gun_offset, _final_angle);
y = obj_player.y + + lengthdir_y(_gun_offset, _final_angle);
_angle = _final_angle;
image_angle = _angle;


// look at joystick for MOBILE
if (instance_exists(obj_joystick_aim)) {
    var _aim_x = obj_joystick_aim.joy_x;
    var _aim_y = obj_joystick_aim.joy_y;

    // Joystick hareket ediyorsa
    if (_aim_x != 0 or _aim_y != 0) {
        // Joystick'in pozisyonuna göre hedef alınacak açı hesaplanır
        var _mouse_angle = point_direction(x, y, x + _aim_x, y + _aim_y);

        // Silahın konumu, offset ve açıya göre hesaplanır
        var _final_angle = _mouse_angle + angle_offset; // Eğer varsa ek bir offset
        x = obj_player.x + lengthdir_x(_gun_offset, _final_angle);
        y = obj_player.y + lengthdir_y(_gun_offset, _final_angle);
        _angle = _final_angle;
        // Silahın açısı joystick'e göre döndürülür
        image_angle = _angle;
    }else{
        x = obj_player.x + lengthdir_x(_gun_offset, _angle);
        y = obj_player.y + lengthdir_y(_gun_offset, _angle);
        // Silahın açısı joystick'e göre döndürülür
        image_angle = _angle;
    }
}



// if mouse left button clicked create a bullet (FOR PC)
//if(mouse_check_button_pressed(mb_left)){
    //instance_create_layer(x,y,"Instances",obj_bullet);
//}