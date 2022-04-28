/// @description Crate Platform logic

//If the player is on this moving platform
if (instance_exists(obj_playerparent))
&& (obj_playerparent.state != statetype.jump)
&& (collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0)) {
    
    vspeed += 0.1;
    if (vspeed > 0.3)
        vspeed = 0.3;
}
else {

    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top+16, obj_swim, 0, 0)) 
    || (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top+16, obj_lava, 0, 0)) {
    
        //Stop gravity
        gravity = -0.01;
        
        //Cap vertical speed
        if (vspeed > 0.25)
            vspeed = 0.25;
    }
    else {
    
        //Set gravity
        gravity = 0.1;
        
        //Cap vertical speed
        if (vspeed < -0.25)
            vspeed = 0.25;
    }
}

//If the player is on this falling platform, snap it vertically.
if (collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0))
&& (instance_exists(obj_playerparent))
&& (obj_playerparent.state != statetype.jump)
&& (obj_playerparent.bbox_bottom < yprevious+5)
    obj_playerparent.y = ceil(bbox_top-16);

