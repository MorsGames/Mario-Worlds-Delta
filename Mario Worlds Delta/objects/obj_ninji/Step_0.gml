/// @description Ninji logic

//Inherit event
event_inherited();

//Animate
if (gravity > 0) {

    //If jumping and moving down, wait until floor is reached
    if (vspeed > 0)
    && (jumping == 1) {
    
        image_index = 0;
        jumping = 2;
    }
}
else {

    if (jumping == 2) {
        
        //End jump
        jumping = 0;
        
        //Jump again
        alarm[0] = 60+random(round(60));
    }
}

//Follow the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

