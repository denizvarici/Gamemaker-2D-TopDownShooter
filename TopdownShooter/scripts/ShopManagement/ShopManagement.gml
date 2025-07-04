

function calculate_gun_cost(){
    var owned_gun = array_length(global.player_guns);
    switch (owned_gun) {
        case 1:
            return 100;
        case 2:
            return 200;
        case 3:
            return 300;
        case 4:
            return -1;
        default:
            return -1;
    }
}

function add_new_gun_to_inventory(){
    var owned_gun = array_length(global.player_guns);
    switch (owned_gun) {
        case 1:
            global.player_guns = [obj_gun,obj_gun_2];
            break;
        case 2:
            global.player_guns = [obj_gun,obj_gun_2,obj_gun_3];
            break;
        case 3:
            global.player_guns = [obj_gun,obj_gun_2,obj_gun_3,obj_gun_4];
            break;
        default:
            return 0;
    }
}



function calculate_upgrade_cost(stat_to_upgrade){
    var level, cost, base_cost, multiplier;
    switch (stat_to_upgrade) {
        case "player_health":
            level = global.player_health_lvl;
            base_cost = 2; 
            multiplier = 1.3; 
            cost = ceil(base_cost * power(multiplier, level));
            return cost;
        case "player_speed":
            level = global.player_speed_lvl;
            base_cost = 3; 
            multiplier = 1.3; 
            cost = ceil(base_cost * power(multiplier, level));
            return cost;
        case "bullet_speed":
            level = global.bullet_speed_lvl;
            base_cost = 4; 
            multiplier = 1.35; 
            cost = ceil(base_cost * power(multiplier, level));
            return cost;
        case "bullet_damage":
            level = global.bullet_damage_lvl;
            base_cost = 7; 
            multiplier = 1.5; 
            cost = ceil(base_cost * power(multiplier, level));
            return cost;
        case "gun_cooldown":
            level = global.gun_cooldown_lvl;
            base_cost = 7; 
            multiplier = 1.3; 
            cost = ceil(base_cost * power(multiplier, level));
            return cost;
        default:
            return 0;
    }
}

function get_stat_current_level(stat_to_upgrade){
    switch (stat_to_upgrade) {
        case "player_health":
            return global.player_health_lvl;
        case "player_speed":
            return global.player_speed_lvl;
        case "bullet_speed":
            return global.bullet_speed_lvl;
        case "bullet_damage":
            return global.bullet_damage_lvl;
        case "gun_cooldown":
            return global.gun_cooldown_lvl;
        default:
            return 20;
    }
}

function after_buy_implement_upgrade(stat_to_upgrade){
    var level, new_stat;
    switch (stat_to_upgrade) {
        case "player_health":
            level = global.player_health_lvl + 1;
            new_stat = 10 + (level * 5); 
            global.player_health_lvl = level;
            global.player_health = new_stat;
            break;
        case "player_speed":
            level = global.player_speed_lvl + 1;
            new_stat = global.player_speed + (global.player_speed * 0.15);
            global.player_speed_lvl = level;
            global.player_speed = new_stat;
            break;
        case "bullet_speed":
            level = global.bullet_speed_lvl + 1;
            new_stat = global.bullet_speed + (global.bullet_speed * 0.15);
            global.bullet_speed_lvl = level;
            global.bullet_speed = new_stat;
            break;
        case "bullet_damage":
            level = global.bullet_damage_lvl + 1;
            new_stat = global.bullet_damage + 1; 
            global.bullet_damage_lvl = level;
            global.bullet_damage = new_stat;
            break;
        case "gun_cooldown": 
            level = global.gun_cooldown_lvl + 1;
            new_stat = max(60 - (level * 5), 1);
            global.gun_cooldown_lvl = level;
            global.gun_cooldown = new_stat;
            break;
        default:
            break;
    }
}
