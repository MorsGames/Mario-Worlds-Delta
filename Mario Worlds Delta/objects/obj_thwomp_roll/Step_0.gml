/// @description Rollin' Thwomp logic 
        
//Inherit event
event_inherited();

//Check for a slope
slope_below = collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+2, obj_slopeparent, 1, 0);

//If there's a slope below the player
if (slope_below) {

    hspeed += slope_below.add/3;
    if (hspeed > 3)
        hspeed = 3;
    else if (hspeed < -3)
        hspeed = -3;
}
    
//Set angle
angle += (hspeed*4)*-1;

