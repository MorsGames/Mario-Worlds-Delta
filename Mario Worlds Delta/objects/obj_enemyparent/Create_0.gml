/// @description The parent object for all enemies

//How vulnerable is this enemy to items
//0: Normal
//1: Immune to fireball
//2: Immune to cape
//3: Immune to both fireball and cape
//99: Invincible
//100: Invincible + Ignore projectiles
vulnerable = 0;

//How vulnerable is this enemy to the player
//0: Normal
//1: Hurt Player
//2: Hurt Player + Yoshi Immunity
//3: Solid on top
//4: Stomp only
//-1: Phase through Player
stomp = 0;

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

//Death Sprite
deathsprite = spr_goomba_dead;

//Stomp sprite
stompsprite = spr_goomba_sq;

//Inherit event from parent
event_inherited();

