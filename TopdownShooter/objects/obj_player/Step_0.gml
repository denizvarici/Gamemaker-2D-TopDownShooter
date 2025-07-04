//movement with keyboard wasd
_hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
_ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _move_x = _hor * _speed;
var _move_y = _ver * _speed;
if(_hor != 0 or _ver != 0){
    if (!place_meeting(x + _move_x, y, tile_col)) {
        x += _move_x;
    } 
    if (!place_meeting(x, y + _move_y, tile_col)) {
        y += _move_y;
    } 
}

//çarpışma esnasında duvara girmesin diye
if (place_meeting(x, y, tile_col)) {
    if (!place_meeting(x - _move_x, y, tile_col)) {
        x -= _move_x; // x çarpışmıyorsa x kısmı duvarın içinde demekki x'i geri çek
    }
    if (!place_meeting(x, y - _move_y, tile_col)) {
        y -= _move_y; // y'yi geri çek
    }
}




// Movement with joysticks
var _move_x_j = 0;
var _move_y_j = 0;
with (obj_joystick_move) {
    _move_x_j = joy_x / radius;
    _move_y_j = joy_y / radius;
}

// X ekseninde hareket ve çarpışma kontrolü
var new_x = x + (_move_x_j * _speed);
if (!place_meeting(new_x, y, tile_col)) {
    x = new_x;
}

// Y ekseninde hareket ve çarpışma kontrolü
var new_y = y + (_move_y_j * _speed);
if (!place_meeting(x, new_y, tile_col)) {
    y = new_y;
}

// ÇARPMA OLURSA GERİ ÇEKME SİSTEMİ
if (place_meeting(x, y, tile_col)) {
    if (!place_meeting(x - (_move_x_j * _speed), y, tile_col)) {
        x -= (_move_x_j * _speed); // X ekseninde geri çek
    }
    if (!place_meeting(x, y - (_move_y_j * _speed), tile_col)) {
        y -= (_move_y_j * _speed); // Y ekseninde geri çek
    }
}