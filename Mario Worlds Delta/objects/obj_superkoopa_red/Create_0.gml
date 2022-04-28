/// @description Red Super Koopa

//Inherit the parent event
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 1;

//Set the super koopa sprites
sprite_index = spr_superkoopa_red_fly;

//Death Sprite
deathsprite = spr_superkoopa_red_dead;

//Stomp Sprite
stompsprite = spr_superkoopa_red_dead;

//Get ready to fly upwards
alarm[0] = 20;

//State
flyingup = false;

//Set initial speed
alarm[10] = 2;

