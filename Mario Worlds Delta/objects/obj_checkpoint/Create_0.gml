/// @description SMW Midway Gate

//Do not animate
image_speed = 0;

//Create pole
pole = noone;
alarm[0] = 2;

//Check if there's a semisolid in place
if (!position_meeting(x, y+16, obj_semisolid)) {

    //If there's a midwaygate in position
    if (position_meeting(x, y+16, obj_checkpoint)) {

        //If there's not a midwaygate above
        if (!position_meeting(x, y-1, obj_checkpoint)) {
        
            anim = 0;
            anim_st = 0;
        }
        
        //Otherwise
        else {
        
            anim = 4;
            anim_st = 4;
        }
    }
    
    //Otherwise
    else {
    
        anim = 8;
        anim_st = 8;
    }
}
else if (position_meeting(x, y+16, obj_semisolid)) {

    anim = 4;
    anim_st = 4;
}

