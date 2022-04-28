/// @description Default floor collision

//Check if above a slope
slope = player_inslope();

//If moving down
if (vspeed >= 0) {

    //Check for a semisolid
    var semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+vspeed, obj_semisolid, 0, 0);
    
    //If there's a semisolid below
    if (semisolid)
    && (bbox_bottom < semisolid.yprevious+5)
    && (!collision_rectangle(x-2, bbox_bottom, x+2, bbox_bottom+4, obj_slopeparent, 1, 0))
        y = semisolid.bbox_top-(sprite_height-sprite_get_yoffset(sprite_index));
}

//If moving down and there's no gravity
if ((gravity == 0) && (vspeed >= -1)) {
    
    //Embed into the slope to ensure correct slope mechanics
    if (collision_rectangle(x-2, bbox_bottom+4, x+2, bbox_bottom+8, obj_slopeparent, 1, 0))
    && (!collision_rectangle(x-2, bbox_bottom-3, x+2, bbox_bottom-3, obj_slopeparent, 1, 0))
        y += 4;
    
    ///Handle slope collisions
    if (collision_rectangle(x-2, bbox_bottom-3, x+2, bbox_bottom+vspeed-2, obj_slopeparent, 1, 0))
    && (!collision_rectangle(x-2, bbox_bottom-8, x+2, bbox_bottom-8, obj_slopeparent, 1, 0)) {
    
        if (vspeed > -0.85)   
            while (collision_rectangle(x-2, bbox_bottom-4, x+2, bbox_bottom+vspeed-2, obj_slopeparent, 1, 0))
                y--;
    }
}

//Check for floor objects
if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_semisolid, 0, 0))
&& (!collision_rectangle(bbox_left, bbox_bottom-4, bbox_right, bbox_bottom-4, obj_semisolid, 0, 0))
|| (collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+2, obj_slopeparent, 1, 0)) {

    //Stop vertical movement
    gravity = 0;
    if (vspeed > 0)
        vspeed = 0;
}
else {

    //Set the gravity when not underwater
    if (!swimming) {
    
        //Gravity
        gravity = 0.2;
        
        //Cap vertical speed
        if (vspeed > 0.5)
            vspeed = 0.5;
    }
    
    //Otherwise, set the gravity when underwater
    else {
    
        //Gravity
        gravity = 0.1;
        
        //Cap vertical speed
        if (vspeed > 0.125)
            vspeed = 0.125;
    }
}

