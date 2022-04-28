/// @description Start moving

//If the player does not exist
if (gravity > 0)
|| (!instance_exists(obj_playerparent)) {

    alarm[10] = 1;
    exit;
}

//Set the running sprite
sprite_index = spr_charginchuck_walk;

//Disable friction
friction = 0;
    
//Play sound
alarm[0] = 6;
    
//If the player is above
if (obj_playerparent.bbox_bottom < y-16) {

    //Animate
    image_speed = 0.25;
    
    //Do not lookout
    lookout = 0;
    
    //Stop moving
    alarm[1] = 120;
    
    //Move towards the player
    if (obj_playerparent.x < x)
        hspeed = -1;
    else
        hspeed = 1;
}

//Otherwise
else {
        
    //Animate
    image_speed = 0.5;
    
    //Lookout for player
    lookout = 1;
    
    //Move towards the player
    if (obj_playerparent.x < x)
        hspeed = -1.75;
    else
        hspeed = 1.75;
}

