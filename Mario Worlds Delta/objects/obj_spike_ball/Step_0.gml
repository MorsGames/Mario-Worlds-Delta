/// @description Spike's ball logic

//Destroy if the parent did not threw it
if (ready == 0)
&& (!instance_exists(parent)) {

    with (instance_create(x, y+8, obj_smoke)) sprite_index = spr_smoke_16;
    instance_destroy();
    exit;
}

//Otherwise, do default step
else if (ready > 0) {

    //Phase througn floors if not falling down
    if (ready == 1) {  
        
        //Inherit event
        event_inherited();
        
        //Check for a slope
        slope_below = collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+2, obj_slopeparent, 1, 0);
        
        //If there's a slope below the player
        if (slope_below)
            hspeed += slope_below.add/3;
    }
        
    //Otherwise, set gravity
    else {
        
        //Gravity
        gravity = 0.2;
        
        //Cap vertical speed
        if (vspeed > 4)
            vspeed = 4;
    }
    
    //Set angle
    if (ready == 1)
        angle += (hspeed*6)*-1;
    else
        angle += (hspeed*12)*-1;
}

//Destroy when outside
if (outside_view(16)) 
&& (y > __view_get( e__VW.YView, view_current ))
    instance_destroy();

