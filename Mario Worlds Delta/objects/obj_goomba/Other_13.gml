/// @description Custom wall collision

//If there's not a pokey below, perform wall collision
if (mebelow == noone) {

    if ((hspeed < 0) && (collision_rectangle(bbox_left-1, bbox_bottom-(a*14), bbox_left, bbox_bottom-4, obj_solid, 1, 0)))
    || ((hspeed > 0) && (collision_rectangle(bbox_right, bbox_bottom-(a*14), bbox_right+1, bbox_bottom-4, obj_solid, 1, 0))) {
    
        //Reverse horizontal speed
        hspeed = -hspeed;
        
        //Prevent getting embed on walls
        while (collision_rectangle(bbox_left, bbox_bottom-(a*16), bbox_left, bbox_bottom-4, obj_solid, 1, 0))
            x++;
        while (collision_rectangle(bbox_left, bbox_top-(a*16), bbox_right, bbox_bottom-4, obj_solid, 1, 0))
            x--;
    }
}

