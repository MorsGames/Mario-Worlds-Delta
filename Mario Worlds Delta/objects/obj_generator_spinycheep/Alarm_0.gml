/// @description Generate flying spiny cheep-cheeps

//If the player exists
if (instance_exists(obj_playerparent)) {

    //If the player is inside the spawn area, proceed
    if (obj_levelcontrol.gswitchon == false)
    && (point_in_rectangle(obj_playerparent.x, obj_playerparent.y, xmin, 0, xmax, room_height)) {
    
        //Repeat
        alarm[0] = 40;
        
        //Generate a spiny-cheep
        if (choose(0, 1) == 0)
            instance_create(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.WView, view_current ) - 48, obj_spinycheep);
        else
            instance_create(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.WView, view_current ) - 48, obj_spinycheep);
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

