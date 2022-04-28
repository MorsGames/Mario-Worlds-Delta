/// @description Moving platform logic

//If the player is on this platform
if (ready == 0)
&& (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, obj_playerparent, 0, 0)) 
&& (obj_playerparent.state != statetype.jump) {

    //Set the vertical speed
    vspeed = 0.5;
    
    //Platform is falling
    ready = 1;
    
    //Apply gravity
    alarm[0] = 15;
}

//If the platform is falling
else if (ready == 1) {
    
    //Destroy
    if (bbox_top > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) {
    
        ready = 2;
        alarm[1] = 1;
    }
    
    //Cap vertical speed.
    if (vspeed > 2)    
        vspeed = 2;      
}

//If the player is on this falling platform, snap it vertically.
if (collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0))
&& (!collision_rectangle(obj_playerparent.bbox_left, bbox_top-5, obj_playerparent.bbox_right, bbox_top+1, obj_semisolid, 0, 1))
&& (!collision_rectangle(obj_playerparent.bbox_left, bbox_top-5, obj_playerparent.bbox_right, bbox_top+1, obj_semisolid_moving, 0, 1))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state != statetype.jump)
    obj_playerparent.y = ceil(bbox_top-16);

