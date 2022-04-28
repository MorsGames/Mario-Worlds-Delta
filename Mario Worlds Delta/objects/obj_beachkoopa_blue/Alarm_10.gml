/// @description Move towards the player

//Deny, if stomped or sliding
if (sprite_index == stompsprite) then exit;
if (slide) then exit;

//If the koopa can move
if (ready > 0) {

    //Check where the mouse is and move in that direction
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
    
    //Set the speed
    hspeed = xscale;
    depth = -2;
    
    //Animate 
    image_speed = 0.15;

    //Set walking sprite
    if (sprite_index != spr_beachkoopa_blue_walk)
        sprite_index = spr_beachkoopa_blue_walk;
}

