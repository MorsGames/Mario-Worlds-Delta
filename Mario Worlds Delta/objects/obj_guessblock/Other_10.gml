/// @description Perform block events

//If the parent counter is set to 0
if (parent.count == 0) {

    //If this is the first block to hit.
    if (numb == 1) {
    
        //Create a coin
        instance_create(x+8, y-16, obj_blockcoin);
        
        //Increment counter
        parent.count++;
        
        //Do special empty block
        alarm[1] = -1;
        alarm[2] = 8;
    }
    
    //Otherwise, if this is the second block
    else if (numb == 2) {
    
        //Play 'Wrong' sound
        audio_stop_play_sound(snd_wrong, 0, false);
        
        //Turn into a empty block
        alarm[1] = 8;
        
        //Turn other blocks onto empty blocks
        with (parent.myblock[0]) event_user(15);
        with (parent.myblock[2]) event_user(15);
    }
    
    //Otherwise, if this is the third block
    else if (numb == 3) {
    
        //Play 'Wrong' sound
        audio_stop_play_sound(snd_wrong, 0, false);
        
        //Turn into a empty block
        alarm[1] = 8;
        
        //Turn other blocks onto empty blocks
        with (parent.myblock[0]) event_user(15);
        with (parent.myblock[1]) event_user(15);     
    }
}

//Otherwise, if the parent counter is set to 1
else if (parent.count == 1) {
    
    //If this is the second block
    if (numb == 2) {
    
        //Create a coin
        instance_create(x+8, y-16, obj_blockcoin);
        
        //Increment counter
        parent.count++;
        
        //Do special empty block
        alarm[1] = -1;
        alarm[2] = 8;
    }
    
    //Otherwise, if this is the third block
    else if (numb == 3) {
    
        //Play 'Wrong' sound
        audio_stop_play_sound(snd_wrong, 0, false);
        
        //Turn into a empty block
        alarm[1] = 8;
        
        //Turn other blocks onto empty blocks
        with (parent.myblock[1]) event_user(15);       
    }
}

//Otherwise, if the parent counter is set to 2
else if (parent.count == 2) {

    if (numb == 3) {
    
        parent.count++;
        alarm[1] = -1;
        alarm[2] = 8;
    }
}

