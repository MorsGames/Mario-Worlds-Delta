/// @description Lakitu

//Inherit event from parent
event_inherited();

//Lakitu lure range
lurerange = 32;

//Lakitu type
type = 0;

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 2;

//Death Sprite
deathsprite = spr_lakitu_dead;

//Stomp sprite
stompsprite = spr_lakitu_dead;

//Sprite
sprite_index = spr_lakitu;

//Animate
image_speed = 0;

//Make enemies turn?
enemyturn = false;

//Fisher?
fisher = false;

//Is Lakitu fishing
fishing = false;

//Create bait
bait = instance_create(x, y, obj_lakitubait);

//Bait X
baitx = 20;

//Bait Y
baity = 13;

//Bait Y length
baitlength = 0;

//Assign bait's creator
with (bait) parent = other.id;

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

