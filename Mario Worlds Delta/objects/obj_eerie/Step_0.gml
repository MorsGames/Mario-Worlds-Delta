/// @description Eerie logic

//Activate when close to view
if (point_in_rectangle(x,y,__view_get( e__VW.XView, view_current )-16,__view_get( e__VW.YView, view_current )-16,__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+16,__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+16)) && (activated = false) {
    
    activated = true;
    if (instance_exists(obj_playerparent)) {
    
        if (x > obj_playerparent.x)
            hspeed = -1;
        else 
            hspeed = 1;
    } 
    else hspeed = 1;
}

//Handle image scale
if (hspeed < 0)
    xscale = -1;
else 
    xscale = 1;

//Make destroyable when in view
if (activated = 1) 
&& (point_in_rectangle(x,y,__view_get( e__VW.XView, view_current )+16,__view_get( e__VW.YView, view_current )+16,__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )-16,__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )-16))
    activated = 2;

//Destroy when out of view 
if (object_index != obj_slimebubble)
    if (outside_view(16)) && (activated = 2)
        instance_destroy();

