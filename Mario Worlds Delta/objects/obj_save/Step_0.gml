/// @description Message box logic

//If scaling up
if (ready == 0) {

    scale += 0.05;
    if (scale > 1) {
    
        //Force set max scale
        scale = 1;
        
        //Display message
        ready = 1;
        
        //Start flashing
        alarm[0] = 20;

    }
}

//Otherwise, if the message is being displayed
else if (ready == 1) {

    //If the player presses the 'Up' key
    if (input_check_pressed(input.up)) {
    
        //Make cursor visible
        display = true;
        alarm[0] = 20;
    
        //Play 'Fireball' sound
        audio_stop_play_sound(snd_fireball, 0, false);
    
        selection = !selection;
    }
    
    //Otherwise, if the player presses the 'Down' key
    else if ((input_check_pressed(input.down))
    || (input_check_pressed(input.select))) {
    
        //Make cursor visible
        display = true;
        alarm[0] = 20;
        
        //Play 'Fireball' sound
        audio_stop_play_sound(snd_fireball, 0, false);
    
        selection = !selection;
        
    }

    if ((input_check_pressed(input.action0))
    || (input_check_pressed(input.action2))) {
    
        if (selection == 0) {
        
            save(global.file)
            audio_stop_play_sound(snd_whistle,0,0);
            
        } else {
        
            audio_stop_play_sound(snd_coin,0,0);
            
        }
    
        ready = 2;
        
    }
    
}

//Otherwise, if scaling down
else if (ready == 2) {

    scale -= 0.05;
    if (scale < 0) {
        
        //Reset the state of the shift key
        keyboard_clear(input.action0);
        keyboard_clear(input.action2);
        
        //Destroy the message box
        instance_destroy();     
        
        with (obj_mapplayer) {
        
            status = mapstate.idle;
        
        }
               
    }    
}



