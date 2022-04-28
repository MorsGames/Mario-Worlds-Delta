/// @description Take points off time and add it to score

//If the HUD is not "Minimalist / No Score"
if (obj_controller.hud_type != 4) {
       
    //If the time is greater than 4, decrement 5 seconds from timer
    if (global.time > 4) {
    
        //Repeat the process
        alarm[3] = 2;
    
        //Get 250 points
        score += 250;
        
        //Decrement 5 seconds
        global.time -= 5;
    }
    
    //Otherwise, decrement timer by 1 second
    else if ((global.time < 5) && (global.time > 0)) {
    
        //Repeat the process
        alarm[3] = 2;
    
        //Get 50 points
        score += 50;
        
        //Decrement 1 second
        global.time--;
    }
    
    //Play sounds
    if (ready4 == 0)
        ready4 = 1;
}
else {

    global.time = 0;
    if (global.bonusadd > 0)
        ready4 = 1;
    else
        ready4 = 3;
}

