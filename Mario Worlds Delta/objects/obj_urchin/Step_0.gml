/// @description Urchin logic

//Stop moving at solids and end markers
if (vspeed > 0) && (place_meeting(x, y, obj_semisolid))
|| (place_meeting(x, y, obj_solid))
|| (place_meeting(x, y, obj_endmarker)) {

    //Stop moving
    speed = 0;
    
    //Snap onto grid
    move_snap(16,16);
    
    //Start moving again
    alarm[10] = 60;
}

