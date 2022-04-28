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
if ((gravity == 0) && (vspeed >= 0)) {

    //Embed into the slope to ensure correct slope mechanics
    if (collision_rectangle(x-2, bbox_bottom, x+2, bbox_bottom+4, obj_slopeparent, 1, 0))
    && (!collision_rectangle(x-2, bbox_bottom-4, x+2, bbox_bottom-4, obj_slopeparent, 1, 0))
        y += 4;
    
    ///Handle slope collisions
    if (collision_rectangle(x-2, bbox_bottom-4, x+2, bbox_bottom, obj_slopeparent, 1, 0))
    && (!collision_rectangle(x-2, bbox_bottom-8, x+2, bbox_bottom-8, obj_slopeparent, 1, 0)) {
    
        while (collision_rectangle(x-2, bbox_bottom-4, x+2, bbox_bottom, obj_slopeparent, 1, 0))
            y--;
    }
}

//If not swimming
if (swimming == 0) {

    //Check for floor objects
    if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_semisolid, 0, 0))
    && (!collision_rectangle(bbox_left, bbox_bottom-4, bbox_right, bbox_bottom-4, obj_semisolid, 0, 0))
    || (collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+1, obj_slopeparent,1,0)) {
    
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
            if (vspeed > 4)
                vspeed = 4;
        }
        
        //Otherwise, set the gravity when underwater
        else {
        
            //Gravity
            gravity = 0.1;
            
            //Cap vertical speed
            if (vspeed > 1)
                vspeed = 1;
        }
    }
}

//If moving up...
if (vspeed < 0) {

    //...and the NPC bumps a ceiling
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0)) 
    && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_slopeparent_ceiling, 1, 0)) {
    
        //Prevent the NPC from getting embed on the ceiling      
        while ((collision_rectangle(bbox_left, bbox_top+1, bbox_right, bbox_top+1, obj_solid, 1, 0))
        || (collision_rectangle(bbox_left, bbox_top+1, bbox_right, bbox_top+1, obj_slopeparent_ceiling, 1, 0))) {
        
            y++;
        }
        
        //Stop vertical movement
        vspeed = 0;
    }
}

//Prevent the NPC from overlapping ceiling slopes
if (vspeed != 0) {

    //While the player overlaps a slope
    while (collision_rectangle(bbox_left, bbox_top+1, bbox_right, bbox_top+1, obj_slopeparent_ceiling, 1, 0)) {
    
        //Move it down
        y++;
        
        //If moving up
        if (vspeed < 0)
            vspeed = 0;
    }            
}

