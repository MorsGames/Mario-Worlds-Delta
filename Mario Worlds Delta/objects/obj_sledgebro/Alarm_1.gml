/// @description Prepare to jump

//If the sledge bro is on contact with the ground.
if (gravity == 0) {

    //Stop horizontal speed and alarm
    prevalm = alarm[0];
    prevhsp = hspeed;
    hspeed = 0;        
    alarm[0] = -1;
    
    //Jump
    alarm[2] = 30;
}

//Otherwise, deny event.
else
    alarm[1] = 1;

