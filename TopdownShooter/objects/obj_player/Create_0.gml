_hor = 0;
_ver = 0;
x = room_width /2;
y = room_height /2;


tile_col = layer_tilemap_get_id("Tiles_Col");


//take guns to player hand
for (var i = 0; i < array_length(global.player_guns); i++) {
    instance_create_layer(-5,-5,"Instances",global.player_guns[i]);
}


