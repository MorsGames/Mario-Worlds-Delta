/// @description Generate swimming spiny cheep-cheeps

//If the player exists
if (instance_exists(obj_playerparent)) {

    //If the player is inside the spawn area, proceed
    if (obj_controller_level.gswitchon == false)
    && (point_in_rectangle(obj_playerparent.x, obj_playerparent.y, xmin, 0, xmax, room_height)) {
    
        //Repeat
        alarm[0] = 80;
        
        //Reverse dir
        dir = -dir;
        
        //Generate a spiny-cheep
        if (dir == 1)
            instance_create(__view_get( e__VW.XView, view_current ) - 16, __view_get( e__VW.YView, view_current ) + random_range(32, 192), obj_spinycheep_swim);
        else
            instance_create(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) + 16, __view_get( e__VW.YView, view_current ) + random_range(32, 192), obj_spinycheep_swim);
    }
    
    //Otherwise, hold it
    else {
    
        //Hold event
        alarm[0] = 1;
        exit;
    }
}

//Otherwise, hold
else {

    //Hold event
    alarm[0] = 1;
    exit;
}

