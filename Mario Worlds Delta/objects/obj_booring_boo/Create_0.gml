/// @description Boo Ring Boo

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 99;

//How vulnerable is this enemy to the player
stomp = 2;

//How vulnerable is this enemy to Yoshi
edible = 2;

//Death Sprite
deathsprite = sprite_index;

//Stomp sprite
stompsprite = sprite_index;

//Facing direction
xscale = choose(-1, 1);

//Do not swim
swimming = false;

//Circle timer
timer = 0;

//Handle which type of Boo
type = irandom_range(0,2);
animframe = 0;

//Ring variables
ringsize = 0;
ringspeed = 0;
clockwise = 1;

