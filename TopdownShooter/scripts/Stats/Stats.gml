wave_level = 0; //düşman dalga leveli

player_guns = [obj_gun];

//PLAYER STATS
player_health = 10;
player_health_lvl = 1;
player_speed = 0.7;
player_speed_lvl = 1;
player_collected_coin = 100000;

//BULLET STATS
bullet_speed = 2.5;
bullet_speed_lvl = 1;
bullet_damage = 1;
bullet_damage_lvl = 1;

//GUN STATS
gun_cooldown = 60;
gun_cooldown_lvl = 1;

//enemy spawner properties
enemy_to_spawn_multiplier = 10; // levele göre kaç düşman üreyecek
spawn_enemy_per_frames = 60; // kaç framede bir düşman üreyecek
enemy_to_spawn = wave_level*enemy_to_spawn_multiplier; //üreyecek toplam düşman sayısı hesabı


//enemy self properties
enemy_health = wave_level;
enemy_speed_multiplier = .1;
enemy_speed = wave_level * enemy_speed_multiplier;
enemy_damage = 1;


function reset_the_game_level_and_variables(){
    global.wave_level = 0;
    global.player_health = 10;
    global.player_speed = 0.7;
    global.player_collected_coin = 1000;
    
    global.bullet_speed = 2.5;
    global.bullet_damage = 1;
    
    global.gun_cooldown = 60;
    
    global.player_health_lvl = 1;
    global.player_speed_lvl = 1;
    global.bullet_speed_lvl = 1;
    global.bullet_damage_lvl = 1;
    global.gun_cooldown_lvl = 1;
    global.player_guns = [obj_gun];
    
}