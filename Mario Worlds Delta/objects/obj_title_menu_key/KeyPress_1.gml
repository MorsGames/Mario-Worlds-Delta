/// @description Set up the key

if (ready == 1) {

    //Check for the new key
    var newKey = keyboard_key;
    
    //If the new key is the escape key, warn the player that said key cannot be mapped
    if (newKey == vk_escape) {
    
        //Play 'Wrong' sound
        audio_play_sound(snd_wrong, 0, false);
    
        //Set default key
        switch (key) {
        
            //Action 0
            case (0): global.key[input.action0] = vk_shift; break;
            
            //Action 1
            case (1): global.key[input.action1] = vk_control; break;
            
            //Action 2
            case (2): global.key[input.action2] = vk_space; break;
        
            //Select
            case (3): global.key[input.start] = vk_backspace; break;
            
            //Start
            case (4): global.key[input.start] = vk_enter; break;
            
            //Up
            case (5): global.key[input.up] = vk_up; break;
            
            //Down
            case (6): global.key[input.down] = vk_down; break;
            
            //Left
            case (7): global.key[input.left] = vk_left; break;
            
            //Right
            case (8): global.key[input.right] = vk_right; break;
        }
    }
    else {
    
        //Play 'Correct' sound
        audio_play_sound(snd_correct, 0, false);
    
        //Set new key
        switch (key) {
        
            //Control
            case (0): { 
            
                if (newKey == vk_lcontrol)
                || (newKey == vk_rcontrol)
                    global.key[input.action1] = vk_control;
                else
                    global.key[input.action1] = newKey;
            } break;
            
            //Shift               
            case (1): { 
            
                if (newKey == vk_lshift)
                || (newKey == vk_rshift)
                    global.key[input.action0] = vk_shift;
                else
                    global.key[input.action0] = newKey;
            } break;
            
            //Space                
            case (2): global.key[input.action2] = newKey; break;
            
            //Backspace                
            case (3): global.key[input.select] = newKey; break;
            
            //Enter                
            case (4): global.key[input.start] = newKey; break;
            
            //Up                 
            case (5): global.key[input.up] = newKey; break;
            
            //Down
            case (6): global.key[input.down] = newKey; break;
            
            //Left
            case (7): global.key[input.left] = newKey; break;
            
            //Right
            case (8): global.key[input.right] = newKey; break;
        }
    }
    
    //Delete the screenshot
    background_delete(back);
    
    //Activate everything
    instance_activate_all();

    //Resume movement on all backgrounds
    for (var i=0; i<8; i++) {
    
        __background_set( e__BG.HSpeed, i, temp_h[i] )
        __background_set( e__BG.VSpeed, i, temp_v[i] )
    }
    
    //Destroy
    instance_destroy();
}

