/// @description Default enemy stomp script

//Set up the sprite
sprite_index = stompsprite;

//Do not animate
image_speed = 0;
image_index = 0;

//Make intangible
vulnerable = 100;
stomp = -1;
edible = 3;

//Stop it
hspeed = 0;

//Destroy after a while
alarm[0] = 20;

