/// @description Move towards the player

//Set the sprite
sprite_index = spr_dinotorch;

//Animate
image_speed = 0.2;

//If not moving
if (hspeed == 0) {

    //If the player does not exist or it's at the left.
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1;
    else
        hspeed = 1;
}
    
//Stop
alarm[1] = 180;

//Move towards the player
alarm[11] = 60;

