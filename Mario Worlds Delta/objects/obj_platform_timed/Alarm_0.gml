/// @description Perform platform actions

//Decrement time
time--;

//Make the platform fall if the timer hits 0
if (time == 0)
    gravity = 0.15;
else
    alarm[0] = 60;

