/// @description 10-Coins

//Inherit event from parent
event_inherited();

//Do not animate
image_speed = 0.15;

//Apply physics if ready
ready = 0;

//Previous y position
yprev = 0;

//Move 2 pixels down
y += 2;

//Bounce in ground, there's no need to modify this variable
bouncy = 0;

