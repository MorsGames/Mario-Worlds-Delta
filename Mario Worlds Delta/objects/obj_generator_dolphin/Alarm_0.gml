/// @description Generate flying cheep-cheeps

//If the player exists
if (instance_exists(obj_playerparent)) {

    //If the player is inside the spawn area, proceed
    if (obj_levelcontrol.gswitchon == false)
    && (point_in_rectangle(obj_playerparent.x, obj_playerparent.y, xmin, 0, xmax, room_height)) {
    
        //If the generator generated less than 5 dolphins
        if (spawn < 5) {
    
            //Repeat the process.
            alarm[0] = 30;
            
            //Increment spawn
            spawn++;
            
            //Generate a spiked cheep-cheep.
            if (dir == 1)
                with (instance_create(__view_get( e__VW.XView, 0 )-16, __view_get( e__VW.YView, 0 )+random_range(32,184), obj_dolphin_gen)) hspeed = 1.5;
            else
                with (instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16, __view_get( e__VW.YView, 0 )+random_range(32,184), obj_dolphin_gen)) hspeed = -1.5;
        }
        else {
        
            //Reset spawn
            spawn = 0;
            
            //Generate a new batch
            alarm[0] = 120;
        }
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

