/// @description Net Koopa

//Inherit event
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Scale
xscale = 1;

//Allow to turn around
turnaround = 0;

//Animate
image_speed = 0.15;

//Set starting direction
if (place_snapped(32, 32))
    ready = 0;
else if (place_snapped(32, 16))
    ready = 1;
else if (place_snapped(16, 32))
    ready = 2;
else
    ready = 3;

