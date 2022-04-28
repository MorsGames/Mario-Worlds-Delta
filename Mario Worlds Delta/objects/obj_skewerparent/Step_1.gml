/// @description Collision with stone or blocks

var stone = collision_rectangle(bbox_left-2, bbox_top-2, bbox_right+2, bbox_bottom+2, obj_brick_stone, 0, 0);
if (stone) {

    //If the object is affected by gravity
    if (gravity != 0) {
    
        //If this object is not a stone one
        if (stone.object_index == obj_iceblock)
        || (stone.object_index == obj_emptyblock)
            with (stone) event_user(0);
        
        //Otherwise, count them
        else {
        
            //If this skewer shattered less than 4 stone blocks, shatter block
            if (count < 3) {
            
                count++;
                with (stone) event_user(0);
            }
            
            //Otherwise, stop it
            else if (count == 3) {
            
                //Play 'Thud' sound
                audio_stop_play_sound(snd_thud, 0, false);
                    
                //Destroy one more block and stop
                with (stone) event_user(0);
                
                //Snap in grid
                move_snap(16, 16);
            
                //No gravity
                gravity = 0;
                speed = 0;
                
                //Is ready
                ready = 1;
                
                //Return to position
                alarm[3] = 60;
            }
        }
    }
}

//Check for blocks
var block = collision_rectangle(bbox_left-2, bbox_top-2, bbox_right+2, bbox_bottom+2, obj_blockparent, 0, 0);
if (block)
&& (gravity != 0)
    with (block) event_user(15);

