/// @description Break with a mega thwomp

var thwomp = collision_rectangle(bbox_left-1, y-4, bbox_right, y, obj_thwomp_mega, 1, 0);
if (thwomp)
&& (thwomp.ready == 1) {

    //If this object is a iceblock or a empty block
    if (object_index == obj_iceblock)
    || (object_index == obj_emptyblock)
        event_user(15);
        
    //Otherwise
    else {
    
        //Break up to 4 stones
        if (thwomp.count < 4) {
        
            thwomp.count++;
            event_user(15);
        }
    }
}

var skewer = collision_rectangle(bbox_left-4, bbox_top-4, bbox_right+4, bbox_bottom+4, obj_skewerparent, 1, 0);
if (skewer) {

    //If the skewer is affected by gravity
    if (skewer.gravity != 0) {
    
        //If this object is a iceblock or a empty block
        if (object_index == obj_iceblock)
        || (object_index == obj_emptyblock)
            event_user(15);
            
        //Otherwise
        else {
        
            if (skewer.count < 3) {
            
                skewer.count++;
                event_user(15);
            }
            else if (skewer.count == 3) {
            
                //Play 'Thud' sound
                audio_stop_play_sound(snd_thud, 0, false);
                    
                //Destroy one more block and stop
                event_user(15);
                
                //Stop the skewer
                with (skewer) {
                    
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
}

