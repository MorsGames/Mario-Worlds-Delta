/// @description Mount Yoshi

//If Yoshi is idle or running away
if (state == yoshistate.idle)
|| (state == yoshistate.runaway) {

    //If the player jumps on Yoshi and Yoshi can be ridden
    if (rideme == true) 
    && (other.vspeed > 0) 
    && (other.holding == 0)
    && (other.visible == true) {
    
        //Play 'Yoshi' sound
        audio_stop_play_sound(snd_yoshi, 0, false);
                
        //Set up yoshi state
        state = yoshistate.ridden;  
              
        //Yoshi is ridden
        global.mount = 1;
               
        //Stop movement
        speed = 0;
        gravity = 0;          
        
        //Snap into position
        other.x = x;
        other.y = y;
        
        //Force the player to hold Yoshi
        other.holding = 99;
    }
}

