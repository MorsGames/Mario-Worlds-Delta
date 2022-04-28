/// @description Generate galoombas when the player is inside the area

//If the player exists
if (instance_exists(obj_playerparent)) {

    //If the player is inside the spawn area, proceed
    if (obj_levelcontrol.gswitchon == false)
    && (point_in_rectangle(obj_playerparent.x, obj_playerparent.y, xmin, 0, xmax, room_height)) {
    
        //Generate a galoomba
        instance_create(__view_get( e__VW.XView, 0 )+random_range(32, global.gw-32), __view_get( e__VW.YView, 0 )-32, obj_galoomba_parachute);
        
        //Repeat
        alarm[0] = 180;
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

