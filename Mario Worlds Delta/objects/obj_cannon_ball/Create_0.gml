/// @description Cannonball

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 1;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = spr_cannon_ball;

//Stomp sprite
stompsprite = spr_cannon_ball;

//Create smoke effect
with (instance_create(x, y, obj_smoke)) sprite_index = spr_smoke_16;

//Animate
image_speed = 0;

