/// @description A held blue brick

//Inherit event from parent
event_inherited();

//Animate
image_speed = 1;

//Whether the object is being held
held = 0;

//Whether the object has been kicked
ready = 0;

//Number of kills
hitcombo = 0;

//Snowball angle
angle = 0;

//Whether the brick will harm the player
harmplayer = 0;

//Slowdown animation
alarm[0] = 480;

//Destroy after 600 steps
alarm[1] = 600;

