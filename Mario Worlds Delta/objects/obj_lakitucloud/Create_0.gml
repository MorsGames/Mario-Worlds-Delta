/// @description Rideable lakitu cloud

//Animate
image_speed = 0.1;

//Max. speed
movespeed = 1;

//Timer
timer = 0;

//Horizontal scale
xscale = 1;

//Whether the player is on the cloud
player_on = false;

//Whether the player can ride this cloud
can_on = true;

//Set destroy timers
set = false;

//Cloud front
myfront = instance_create(x, y, obj_lakitucloud_front);
with (myfront)
    parent = other.id;

//Create a fake semisolid
mytop = instance_create(x-8, y+10, obj_semisolid_moving);
with (mytop)
    visible = false;

