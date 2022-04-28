/// @description Take points off time and add it to score

//If the HUD is not "Minimalist / No Score"
if (obj_controller.hud_type != 4) {
       
    //If the time is greater than 4, decrement 5 seconds from timer
    if (global.time > 4) {
    
        //Repeat the process
        alarm[2] = 2;
    
        //Get 500 points
        score += 500;
        
        //Decrement 5 seconds
        global.time -= 5;
    }
    
    //Otherwise, decrement timer by 1 second
    else if ((global.time < 5) && (global.time > 0)) {
    
        //Repeat the process
        alarm[2] = 2;
    
        //Get 100 points
        score += 100;
        
        //Decrement 1 second
        global.time--;
    }
    
    //Play sounds
    if (ready == 0)
        ready = 1;
}
else {

    global.time = 0;
    ready = 3;
}

