/// @description A held koopa shell

//Inherit event from parent
event_inherited();

//Animate
image_speed = 0;
image_index = 0;

//Number of kills
hitcombo = 0;

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Whether this shell is flipped
flip = 0;

//Whether there's a koopa inside this shell
koopainside = 0;

//Death sprite
deathsprite = spr_koopa_dead;

//Shake
offset = 0;
alarm[0] = 312;

//Get out of shell
alarm[1] = 432;

//Check the sprite and set vulnerabilities
event_user(14);

