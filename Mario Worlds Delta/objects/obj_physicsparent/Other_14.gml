/// @description Default floor collision

//Check if above a slope
slope = player_inslope();

//If moving down
if (vspeed >= 0) {
    
    //Check for a semisolid
    var semisolid = collision_rectangle(bbox_left, bbox_bottom-1, bbox_right, bbox_bottom+vspeed, obj_semisolid, 0, 0);
    
    //If there's a semisolid below
    if (semisolid)
    && (bbox_bottom < semisolid.yprevious+5)
        y = semisolid.bbox_top-(sprite_height-sprite_get_yoffset(sprite_index));
}

//Embed into the slope to ensure correct slope mechanics
if (collision_rectangle(x-2 , bbox_bottom, x+2, bbox_bottom+4,obj_slopeparent,1,0))
&& (!collision_rectangle(x-2, bbox_bottom-4, x+2, bbox_bottom-4,obj_slopeparent,1,0))
&& (vspeed == 0)
    y += 4;

///Handle slope collisions
if (collision_rectangle(x-2, bbox_bottom-4, x+2, bbox_bottom, obj_slopeparent, 1, 0))
&& (!collision_rectangle(x-2, bbox_bottom-8, x+2, bbox_bottom-8, obj_slopeparent, 1, 0)) {

    while (collision_rectangle(x-2, bbox_bottom-4, x+2, bbox_bottom, obj_slopeparent, 1, 0))
        y--;
}

//Check for floor objects
if (collision_rectangle(bbox_left, bbox_bottom-1, bbox_right, bbox_bottom+1, obj_semisolid, 0, 0))
&& (!collision_rectangle(bbox_left, bbox_bottom-4, bbox_right, bbox_bottom-4, obj_semisolid, 0, 0)) 
|| (collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+1, obj_slopeparent, 1, 0)) {

    //If moving down
    if (vspeed >= 0) {
    
        //Stop gravity
        gravity = 0;
    
        //If this object is not ancestor of obj_holdparent
        if (!variable_instance_exists(object_index, "bouncy"))
        && (!object_is_ancestor(object_index, obj_holdparent))
            vspeed = 0;
        else {
        
            if (vspeed > 0.5)
                vspeed = -vspeed/2;
            else
                vspeed = 0;
        }
    }
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
        gravity = 0.05;
        
        //Cap vertical speed
        if (vspeed > 1)
            vspeed = 1;
    }
}

//If moving up...
if (vspeed < 0) {

    //...and the NPC bumps a ceiling
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0))
    || (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_tilesolid, 1, 0))
    && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_slopeparent_ceiling, 1, 0)) {
    
        //Prevent the NPC from getting embed on linear ceilings
        while (collision_rectangle(bbox_left, bbox_top+1, bbox_right, bbox_top+1, obj_solid, 1, 0))
        && (!place_meeting(x, y, obj_solid))
            y++;
    
        //Prevent the NPC from getting embed on non-linear ceilings      
        while (collision_rectangle(bbox_left, bbox_top+1, bbox_right, bbox_top+1, obj_slopeparent_ceiling, 1, 0))       
            y++;
        
        //Check if there's a block on the way.
        var block = collision_rectangle(bbox_left, bbox_top-2, bbox_right, bbox_top-1, obj_blockparent, 0, 0);
        
        //If there's a block on the way and this object has obj_holdparent as the parent
        if (block) 
        && ((object_get_parent(object_index) == obj_holdparent) || (object_get_parent(object_index) == obj_holdparent_enemy)) {
            
            //If the block has NOT been hit.
            if (block.ready == 0) 
            && (block.object_index != obj_woodblock) {
        
                //Trigger block events
                with (block) {
                
                    //Block is hit
                    ready = 1;
                    
                    //Set vertical speed
                    vspeed = -2.25;
                    alarm[0] = 4;
                    alarm[3] = 4;
                    
                    //Perform block specific events
                    event_user(0);
                }
            }
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

