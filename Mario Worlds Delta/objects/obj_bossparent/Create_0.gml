/// @description The parent object for all bosses

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
//0: Normal
//1: Immune to fireball
//2: Immune to cape
//3: Immune to both fireball and cape
//99: Invincible
//100: Invincible + Ignore projectiles
vulnerable = 100;

//How vulnerable is this enemy to the player
//0: Normal (can be attacked)
//1: Hurt Player
//2: Stomp only
//-1: Phase through Player
stomp = 2;

//How vulnerable is this enemy to Yoshi
//0: Eatable
//1: Eatable, create item
//2: Not eatable
//3: Not eatable, phase through tongue
edible = 2;

//Facing direction
xscale = -1;

//State
state = 0;

//Turn around at other enemies & cause them to turn around
enemyturn = true;

//HP
hp = 3;

