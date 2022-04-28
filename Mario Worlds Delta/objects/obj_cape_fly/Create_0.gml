/// @description Cape Flight

//Can the player fly?
canfly = 0;

//Can the player dive?
candive = 0;
dive_index = 0;

//Facing direction
xscale = obj_playerparent.xscale;

//Can the player slam the floor
smash = 0;

//Is the object in a slope?
slope = false;

//Set horizontal speed
hspeed = obj_playerparent.hspeed;

//Do not animate
image_speed = 0;

//Fake img index
img_index = 2;

//Wall check
walltouch = false;

//State
state = obj_playerparent.state;

//Vertical speed destination
vspeed_goal = -1;

//Fly cooldown
fly_cooldown = 0;

//Charge amount
charge_amount = 0;

//Can fly
can_fly = true;

//Leave trail
alarm[0] = 4;

