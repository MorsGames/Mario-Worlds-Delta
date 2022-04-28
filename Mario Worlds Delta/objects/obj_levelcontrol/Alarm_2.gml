/// @description Decrement the timer variable

//If there's time left
if (global.time > 0) {

    //Decrement
    global.time--;
    
    //Decrement again after a second
    alarm[2] = 40;
    
    //If there's 101 seconds left, play 'Hurry' sound
    if (global.time == 101)
        alarm[3] = 40;
        
    //Otherwise, if there's 1 second left
    else if (global.time == 1)
        alarm[4] = 41;
}

