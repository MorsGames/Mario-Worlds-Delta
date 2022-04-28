/// @description Stop it

//Stop horizontal speed
hspeed = 0;

//Set state
ready = 0;
ready2 = 1;

//Make the player move again
alarm[1] = 100;

//If there's fireworks
if (fireworks > 0)
    alarm[6] = 30;

