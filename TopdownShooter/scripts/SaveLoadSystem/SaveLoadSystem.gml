function save_game(){
    var _struct = {
        wave_level : global.wave_level,
        player_guns : global.player_guns,
        player_health : global.player_health,
        player_health_lvl : global.player_health_lvl,
        player_speed : global.player_speed,
        player_speed_lvl : global.player_speed_lvl,
        player_collected_coin : global.player_collected_coin,
        bullet_speed : global.bullet_speed,
        bullet_speed_lvl : global.bullet_speed_lvl,
        bullet_damage : global.bullet_damage,
        bullet_damage_lvl : global.bullet_damage_lvl,
        gun_cooldown : global.gun_cooldown,
        gun_cooldown_lvl : global.gun_cooldown_lvl,
    };
    var _string = json_stringify(_struct);
    var _file = file_text_open_write("save.txt");
    file_text_write_string(_file,_string);
    file_text_close(_file);
    
    
}

function load_game(){
    if(file_exists("save.txt")){
        var _file = file_text_open_read("save.txt");
        
        var _json = file_text_read_string(_file);
        
        var _struct = json_parse(_json);
        
        global.wave_level = _struct.wave_level;
        global.player_guns = _struct.player_guns;
        global.player_health = _struct.player_health;
        global.player_health_lvl = _struct.player_health_lvl;
        global.player_speed = _struct.player_speed;
        global.player_speed_lvl = _struct.player_speed_lvl;
        global.player_collected_coin = _struct.player_collected_coin;
        global.bullet_speed = _struct.bullet_speed;
        global.bullet_speed_lvl = _struct.bullet_speed_lvl;
        global.bullet_damage = _struct.bullet_damage;
        global.bullet_damage_lvl = _struct.bullet_damage_lvl;
        global.gun_cooldown = _struct.gun_cooldown;
        global.gun_cooldown_lvl = _struct.gun_cooldown_lvl;
        
        file_text_close(_file);
    }
}

function delete_save(){
    if (file_exists("save.txt")) {
        file_delete("save.txt");
    }
}

function check_if_save_exists(){
    if (file_exists("save.txt")) {
        return true;
        
    }else{
        return false;
    }
}