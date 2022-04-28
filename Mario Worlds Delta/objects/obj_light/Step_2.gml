/// @description Follow the player

//Move towards the player
if (instance_exists(obj_followme)) {

    //Follow the player
    x = obj_followme.x;
    y = obj_followme.y;
    
    //If the player is invincible, increment radius
    if (instance_exists(obj_invincibility)) {
    
        radius += 0.25;
        if (radius > 64)
            radius = 64;
    }
    else {
    
        radius -= 0.25;
        if (radius < 48)
            radius = 48;
    }
} 
else if (instance_exists(obj_player_clear)) {

    //If player cleared level, light still follows
    x = obj_player_clear.x;
    y = obj_player_clear.y;    
    
    //Decrement radius
    radius -= 0.25;
    if (radius < 48)
        radius = 48;
}

