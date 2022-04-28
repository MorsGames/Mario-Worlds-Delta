/// @description Red Rex

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = spr_rex_red_dead;

//Stomp sprite
stompsprite = spr_rex2_red_sq;

//Previous horizontal speed
prevhspeed = 0;

//Animate
image_speed = 0.15;

//Start moving
alarm[10] = 2;

