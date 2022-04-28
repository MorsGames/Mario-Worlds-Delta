/// @description Icicle logic

//If not falling
if (vspeed == 0) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player is above and it's not overlapping a semisolid, resume timer
        if (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, obj_playerparent, 0, 0))
        && (obj_playerparent.state != statetype.jump)    
            shake = 1;
    
        //Otherwise, wait to shake.
        else {
        
            //If the player is nearby and below
            if (obj_playerparent.y > bbox_top) {
            
                //If the player is at 8 pixels from this icicle, make it shake and fall
                if (obj_playerparent.x > bbox_left-8) 
                && (obj_playerparent.x < bbox_right+8)
                    shake = 1;
                    
                //Otherwise, remain there
                else {
                
                    shake = 0;
                    alarm[0] = 28;
                }         
            }
            
            //If the player is not below...
            else {
            
                shake = 0;
                alarm[0] = 28;
            }
        }
    }
    
    //Otherwise, stop
    else {
    
        shake = 0;
        alarm[0] = 28;
    }
}

//Otherwise
else {

    //Do not shake
    shake = 2;
    
    //If moving down
    if (vspeed > 0) {
        
        //Check for floor
        var semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1+vspeed, obj_semisolid, 0, 1);
        var slopes = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1+vspeed, obj_slopeparent, 1, 1);
        
        //If there's a slope or ground in the way
        if (slopes) || (semisolid) {
        
            //Regenerate
            event_user(0);
            
            //Shatter
            event_user(1);
        }
    }    
    
    //If the player is on this donut
    if (collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0))
    && (obj_playerparent.bbox_bottom < yprevious+5)
    && (obj_playerparent.state != statetype.jump) {

        //Check if falling through a semisolid
        var check = collision_rectangle(obj_playerparent.bbox_left, bbox_top-5, obj_playerparent.bbox_right, bbox_top+1, obj_semisolid, 0, 1);
        var check2 = collision_rectangle(obj_playerparent.bbox_left, bbox_top-5, obj_playerparent.bbox_right, bbox_top+1, obj_semisolid_moving, 0, 1);
        
        //If not falling through, or falling througn a lower donut, snap the player vertically
        if (!check) 
        && ((!check2) 
        || (((check2.object_index = obj_donut) || (check2.object_index = obj_donut_red) || (check2.object_index = obj_icicle)) && ((check2.y > y) || ((check2.y = y) && (check2 > id)))))
            obj_playerparent.y = ceil(bbox_top-16);
    }
}

//Destroy
if (shake == 2)
&& (bbox_top > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) {

    event_user(1);
    instance_destroy();
}

