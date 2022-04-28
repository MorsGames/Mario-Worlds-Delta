/// @description Green Slime Bubble logic

//Activate when close to view
if (point_in_rectangle(x,y,__view_get( e__VW.XView, view_current )-32,__view_get( e__VW.YView, view_current )-64,__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+32,__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current ))) && (activated = false) {
    
    activated = true;
    if (instance_exists(obj_playerparent)) {
    
        if (x > obj_playerparent.x)
            hspeed = -1;
        else 
            hspeed = 1;
    } 
    else 
        hspeed = 1;
}

//Wave
if (hspeed != 0) {

    y = ystart + sin((timer) * 0.0225) * 48;
    timer ++;
}

//Make destroyable when in view
if (activated = 1) 
&& (point_in_rectangle(x,y,__view_get( e__VW.XView, view_current )+32,__view_get( e__VW.YView, view_current ),__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )-32,__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )))
    activated = 2;

//Destroy when outside the view
if (activated == 2)
&& ((x < __view_get( e__VW.XView, view_current )-32)
|| (x > __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+32))
    instance_destroy();

