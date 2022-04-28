/// @description Porchu puffer logic

//If not chargin at the player
if (charge == 0) {

    //Activate when close to view
    if (point_in_rectangle(x, y, __view_get( e__VW.XView, view_current )-32, __view_get( e__VW.YView, view_current )-16, __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+32, __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+16))
        charge = 1;
}

else if (charge == 1) {
    
    //Chase the player
    if (instance_exists(obj_playerparent)) { //If the player does not exist
        if (obj_playerparent.x < x) {
        
            hspeed -= 0.025;
            x += obj_playerparent.hspeed / 1.5;
            xscale = -1;
            if (hspeed < -1.5)
                hspeed = -1.5;    
        }
        
        //Otherwise, go to the right
        else if (obj_playerparent.x > x) {
        
            hspeed += 0.025;
            xscale = 1;
            x += obj_playerparent.hspeed / 1.5;
            if (hspeed > 1.5)
                hspeed = 1.5;
        }
    }
    
    //Make sure it does not exit the view boundaries
    if (x < __view_get( e__VW.XView, view_current )-32)
        x = __view_get( e__VW.XView, view_current )-32;
    else if (x > __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )+32)
        x = __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )+32;
}

//Set y position while on water
if (charge)
&& (collision_rectangle(bbox_left, bbox_top, bbox_right, y, obj_swim, 0, 0))
    y -= 0.25;

