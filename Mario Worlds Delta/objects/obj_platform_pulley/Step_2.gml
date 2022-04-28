/// @description Pulley platform logic

//If the player is on this moving platform
if ((collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state != statetype.jump)) {
    
    //If the platform is still being held with the rope.
    if (ready = 0) {
            
        //Set the vertical speed.
        vspeed += 0.1
        
        //Set the vertical speed for the other platform.
        with (parent) vspeed -= 0.1
    }
    
    //Check for a moving platform
    var check = collision_rectangle(obj_playerparent.bbox_left, obj_playerparent.bbox_bottom-1, obj_playerparent.bbox_right, obj_playerparent.bbox_bottom+1, obj_semisolid, 0, 1);
    if (check)
        exit;                

    //Snap the player above the platform
    obj_playerparent.y = ceil(bbox_top-16);
}

//Slowdown both platforms
event_user(0);

//Make both platforms fall and give points.
event_user(1);

//Create new platforms when falling and outside the view.
if (ready == 1) {

    gravity = 0.05;
    if ((y > __view_get( e__VW.YView, 0 )+232) && (parent.y > __view_get( e__VW.YView, 0 )+232)) {
    
        ready = 2; 
        alarm[2] = 180;
    }
}
else
    gravity = 0;

