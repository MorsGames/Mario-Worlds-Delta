/// @description Green Lakitu

//Inherit event from parent
event_perform_object(obj_enemyparent, ev_create, 0);

//Lakitu type
type = 0;

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 2;

//Death Sprite
deathsprite = spr_lakitu_green_dead;

//Stomp sprite
stompsprite = spr_lakitu_green_dead;

//Sprite
sprite_index = spr_lakitu_green;

//Animate
image_speed = 0;

//Make enemies turn?
enemyturn = false;

//Handle cloud animation
cloud_index = 0;

//Set speed
hspeed = 0;

//Lakitu direction
dir = 1;
timer = 0;

//Activated to follow?
activated = false;

//Can throw yet?
canthrow = false;

