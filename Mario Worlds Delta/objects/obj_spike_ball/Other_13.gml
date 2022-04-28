/// @description Default solid collision

//If moving right and the NPC bumps a wall to the right
if ((hspeed > 0) && (collision_rectangle(bbox_right, bbox_top+5, bbox_right+1, bbox_bottom-4-(slope*4), obj_solid, 1, 0)))

//or moving left and the NPC bumps a wall to the left
|| ((hspeed < 0) && (collision_rectangle(bbox_left-2, bbox_top+5, bbox_left, bbox_bottom-4-(slope*4), obj_solid, 1, 0))) {

    //If the item is not outside
    if (!outside_view(8)) {
    
        //Play 'Bump' sound
        audio_stop_play_sound(snd_bump, 0, false);
    }
    
    //Bump blocks
    instance_create(x-8, y, obj_blockbumper);
    
    //Create wall smash
    instance_create(x+(5*sign(hspeed)), y+8, obj_shellthump);            
    
    //Bounce
    vspeed = -3;
    hspeed = -hspeed/4;
    
    //Ignore collision
    ready = 2;
}

