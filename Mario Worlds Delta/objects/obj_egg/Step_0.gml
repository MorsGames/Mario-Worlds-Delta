/// @description Egg logic

//Inherit the event
event_inherited();

//Check if the egg is on the ground
if (gravity == 0) {

    //If the egg didn't opened yet, open it
    if (ready == 0) {
    
        //Open it
        ready = 1;
        
        //Set the crack frame
        alarm[0] = 16;        
    }
}

