/// @description Hurt the player when necessary

//If the block can hurt the player
if (harmplayer == 1)
    with (other) event_user(0);
    
//Otherwise
else {

    //If not moving up
    if (vspeed > -0.5) {
    
        //If the item can be held and the player can hold it
        if (can_hold())
        && (ready == 0)
        && (other.bbox_bottom > bbox_top) {
        
            //Make the player hold it
            other.holding = 1;
            
            //Hold
            held = 1;
            
            //Stop movement
            speed = 0;
            gravity = 0;
        }
        
        //Otherwise
        else if ((held == 0) && (ready == 0)) {
        
            //Play 'Kick' sound
            audio_stop_play_sound(snd_kick, 0, false);
            
            //Create thump
            instance_create(x, y+8, obj_spinthump);
            
            //Kick it
            ready = 1;
            
            //Reset alarms
            alarm[0] = -1;
            alarm[1] = -1;
            image_speed = 0.5;
            
            //If the player is at the left of the block
            if (other.x < x)
                hspeed = (2.7+(abs(obj_playerparent.hspeed)/4));
                
            //Otherwise, if the player is at the right of the block
            else if (other.x > x)
                hspeed = -(2.7+(abs(obj_playerparent.hspeed)/4));                             
        }
    }
}

