/// @description Kamikaze Koopa

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 4;

//How vulnerable is this enemy to Yoshi
edible = 1;

//Death Sprite
deathsprite = spr_koopa_yellow_dead;

//Stomp sprite
stompsprite = spr_koopa_yellow_dead;

//Whether the enemy is charging at the player
charge = 0;

//Combo
hitcombo = 0;

//Sets the colour
isflashing = 0;
alarm[11] = 4;

//Animate
image_speed = 0.3;

//Start moving
alarm[10] = 2;

