/// @description A held mechakoopa

//Inherit event from parent
event_inherited();

//Animate
image_speed = 0.15;

//Number of kills
hitcombo = 0;

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to Yoshi
edible = 1;

//Allow kick
delay = 4;

//Death sprite
deathsprite = spr_mechakoopa_dead;

//Stun sprite
stun1 = spr_mechakoopa_sq;
stun2 = spr_mechakoopa_sq2;

//Return
returnobj = obj_mechakoopa;

//Shake
offset = 0;
alarm[0] = 312;

//Wake up
alarm[1] = 432;

//Check the sprite and set vulnerabilities
event_user(14);

