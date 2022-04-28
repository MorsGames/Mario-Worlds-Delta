/// @description The parent object for all holdable enemies

//Inherit event from parent object
event_inherited();

//How vulnerable is this enemy to items
//0: Normal
//1: Immune to fireball
//2: Immune to cape
//3: Immune to both fireball and cape
//99: Invincible
//100: Invincible + Ignore projectiles
vulnerable = 0;

//How vulnerable is this enemy to Yoshi
//0: Eatable
//1: Eatable, create item
//2: Not eatable
//3: Not eatable, phase through tongue
edible = 0;

//Facing direction
xscale = -1;

//Turn around at other enemies & cause them to turn around
enemyturn = true;

//Combo
hitcombo = 0;

//Death Sprite
deathsprite = spr_koopa_dead;

