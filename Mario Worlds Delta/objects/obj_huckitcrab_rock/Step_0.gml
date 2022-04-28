/// @description Snifit ball logic

//Wall collision
if (((hspeed < 0) && ((collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-4, obj_solid, 1, 0)) || (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_slopeparent, 1, 0))))
|| ((hspeed > 0) && ((collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-4, obj_solid, 1, 0)) || (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_slopeparent, 1, 0))))) {

    //If the ball didn't collided yet
    if (ready == 0) {
    
        //Play 'Bump' sound
        audio_play_sound(snd_bump, 0, false);
    
        //Do not allow collision
        ready = 1;
        
        //Reverse horizontal speed
        hspeed = -hspeed/4;
        
        //Set up some gravity
        gravity = 0.1;
    }
}

//Destroy if outside the view
if (outside_view(16))
    instance_destroy();

