/// @description Huckit Crab

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Animate
image_speed = 0.15;

//Death Sprite
deathsprite = spr_huckitcrab_dead;

//Stomp sprite
stompsprite = spr_huckitcrab_dead;

//Jump
jump = 0;

//Prepare a rock
alarm[0] = 60+round(random(120));

