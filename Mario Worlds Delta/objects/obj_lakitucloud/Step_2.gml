/// @description Make the player move along the cloud if riding

//If the player does exist
if (instance_exists(obj_playerparent)) {
    
    if (player_on == true) {
    
        obj_playerparent.x = x;
        obj_playerparent.y = y-6;
    }
}

mytop.x = x-8;
mytop.y = y+10;

