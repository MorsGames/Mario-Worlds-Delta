/// @description Kicked Koopa Shell

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 1;

//Death Sprite
deathsprite = spr_koopa_dead;

//Combo
hitcombo = 0;

//Whether this shell is flipped
flip = 0;

//Default hspeed
myhsp = abs(hspeed);

//Remember horizontal speed
memhspeed = 0;

//Whether there's a koopa inside this shell
koopainside = 0;

//Whether this shell can harm the player
harmplayer = 0;
alarm[0] = 16;

//Whether this shell is falling through one tile gaps
fall = 0;

//Unused
held = 0;

//Animate
image_speed = 0.3;

//Check sprite and set vulnerabilities
event_user(14);

