/// @description Return both platforms to the start.

//If both platforms are outside
if ((xstart < __view_get( e__VW.XView, view_current )-sprite_width/2) || (xstart > __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )+sprite_width/2))
&& ((parent.xstart < __view_get( e__VW.XView, view_current )-sprite_width/2) || (parent.xstart > __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )+sprite_width/2)) {
    
    //Stop vertical speed.
    vspeed = 0;
    y = ystart;
    
    //Restart both platforms
    ready = 0;
    
    //Restart both ropes
    with (rope) ready = 0;
}
else
    alarm[2] = 1;

