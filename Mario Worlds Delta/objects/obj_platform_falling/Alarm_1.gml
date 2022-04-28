/// @description Create a new platform

if (xstart < __view_get( e__VW.XView, view_current ) - sprite_width)
|| (xstart > __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ))
|| (ystart < __view_get( e__VW.YView, view_current ) - sprite_height)
|| (ystart > __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current )) {

    //Return to start position
    x = xstart;
    y = ystart;
    
    //Reset values
    speed = 0;
    gravity = 0;
    
    //Allow the player to make the platform fall
    ready = 0;
}
else
    alarm[1] = 1;

