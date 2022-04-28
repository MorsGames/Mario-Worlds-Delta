/// @description Collision with the player

//If the thwomp hits the player
if (owo == 0) 
&& (ready == 1) {

    owo = 1;
    if (floor(random(100) >= 95))
        owo = 2;
}

//Inherit event
event_inherited();

