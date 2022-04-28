/// @description A held galoomba

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

//Death sprite
deathsprite = spr_galoomba_dead;

//Shake
offset = 0;
alarm[0] = 312;

//Wake up
alarm[1] = 432;

//Check the sprite and set vulnerabilities
event_user(14);

