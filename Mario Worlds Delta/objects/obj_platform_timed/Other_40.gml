/// @description Check if the platform is below the bottom boundary

if (bbox_top > room_height+32) {

    //If the platform is falling, generate a new one.
    if (ready == 1)
        ready = 2;
        
    //Otherwise, if the start position of the platform is outside the view.
    else {
    
        //If the platform is outside the view
        if (xstart < __view_get( e__VW.XView, 0 )-sprite_width)
        || (xstart > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
        || (ystart < __view_get( e__VW.YView, 0 )-sprite_height)
        || (ystart > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )) {
        
            //Create a new platform
            with (instance_create(xstart, ystart, obj_platform_timed)) {
            
                //Hereby the time from the old platform
                time = other.prevtime;
            }
            
            //Destroy this platform
            instance_destroy();
        }
    }
}

