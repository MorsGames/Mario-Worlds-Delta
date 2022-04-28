/// @description Confused Chuck

//Inherit event from chuck
event_inherited();

//Deny alarm 10
alarm[10] = -1;

//Do not animate
image_speed = 0;
image_index = 0;

//Number of balls to throw
balls = round(random_range(2, 5));

//Whether the chuck is jumping
jumping = 0;

//Whether the chuck is throwing
throwing = 0;

//Throw balls
alarm[0] = 60;

