instance_destroy(); //Destroy this message object
//start enemy spawning
obj_enemy_spawn_manager.alarm[0]=obj_enemy_spawn_manager._spawn_per_frames;
//gun can shoot bullets because wave started
obj_gun_parent._canShoot = true;
