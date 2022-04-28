/// @description Message box logic

//If scaling up
if (ready == 0) {

    scale += 0.05;
    if (scale > 1) {
    
        //Force set max scale
        scale = 1;
        
        //Display message
        ready = 1;
        
        //Open INI
        ini_open("MWDMessage.ini");
        
        //Obtain the message from the given INI section
        message = ini_read_string(inisection, "text", 0);
        
        //Close INI
        ini_close();
    }
}

//Otherwise, if the message is being displayed
else if (ready == 1) {

    //If this is a regular message block, allow it to be closed with 'Action 0'
    if (switchmsg == 0)
    && ((input_check_pressed(input.action0))
    || (input_check_pressed(input.action2)))
        ready = 2;
        
    //Otherwise, if this is a switch palace message block
    else if (switchmsg == 1) {
    
        //If the course clear theme is not playing
        if (!audio_is_playing(snd_palaceclear)) {
        
            ready = 3;
            alarm[0] = 120;
        }
    }else if (switchmsg == 2) {
    
        //If the course clear theme is not playing
        if (!audio_is_playing(snd_worldclear)) {
        
            ready = 3;
            alarm[0] = 120;
        }
    }
    
}

//Otherwise, if scaling down
else if (ready == 2) {

    scale -= 0.05;
    if (scale < 0) {
    
        //Delete the screenshot
        background_delete(back);
    
        //Activate everything
        instance_activate_all();
        
        //Reset the state of the shift key
        keyboard_clear(input.action0);
        keyboard_clear(input.action2);
        
        //Destroy the message box
        instance_destroy();            
    }    
}



