/// @description Create eyecandy when certain conditions meet

//If the player is skidding, crouched or sliding down a slope
if (crouch == true) 
|| (sliding == true) 
|| (sprite_index == player_skid()) {

    //Make sure that the player is moving
    if (state == statetype.walk) {
    
        instance_create(x, bbox_bottom, obj_smoke);
        alarm[11] = 4;
    }
    else
        alarm[11] = 1;
}

//Otherwise, if the player is running at full speed
else if (abs(hspeed) >= hspeed_run_full) {

    //Make sure that the player is moving
    if (state == statetype.walk) {
    
        instance_create(x, bbox_bottom, obj_smoke);
        alarm[11] = 4;
    }
    else
        alarm[11] = 1;
}

//Otherwise
else
    alarm[11] = 1;

