/// @description Magikoopa

/*
**  This item uses creation code!
**
**  xmin = Minimum x coordinate where this enemy appears (Default: X)
**  xmax = Maximum x coordinate where this enemy appears (Default: Room Width)
*/

//Default values
xmin = 0;
xmax = room_width;

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to various items?
vulnerable = 3;

//How vulnerable is this enemy to the player?
stomp = 0;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = 1;

//Whether the magikoopa is preparing a spell
ready = 0;

//Death sprite
deathsprite = spr_magikoopa_dead;

//Stomp sprite
stompsprite = spr_magikoopa_dead;

//Generate sparkles
alarm[2] = 4;

//Do not animate
image_speed = 0;

//Do not show
image_alpha = 0;

/* */
/*  */
