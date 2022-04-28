/// @description Move towards the player

//If not moving
if (hspeed == 0) {

    //If the player does not exist or it's at the left.
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.5;
    else
        hspeed = 0.5;
}

//Spit a projectile
alarm[1] = 180;

//Move towards the player
alarm[11] = 60;

//Animate if it's not animating
image_speed = 0.3;

//Set the default sprite
sprite_index = spr_blastakoopa;

