/// @description Held blue brick logic

//If the brick is not held
if (!held) {

    //Previous horizontal speed
    prevhspeed = hspeed;
    
    //Inherit event
    event_inherited();
    
    //If kicked
    if (ready == 1) {
    
        //Increment angle
        angle -= 10*sign(hspeed);
    
        //If the direction changes...
        if (hspeed != prevhspeed) {
        
            //If the item is not outside
            if (!outside_view(8)) {
            
                //Play 'Bump' sound
                audio_stop_play_sound(snd_bump, 0, false);
            }
                
            //Bump blocks
            instance_create(x-8, y, obj_blockbumper);
            
            //Create wall smash
            instance_create(x+(5*sign(prevhspeed)), y+8, obj_shellthump);
            
            //Shatter
            event_user(0);
        }
        
        //Destroy when outside
        if (outside_view(16))
            instance_destroy();
    }
}

