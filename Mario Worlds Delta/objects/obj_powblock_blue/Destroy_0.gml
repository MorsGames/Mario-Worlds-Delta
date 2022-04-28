/// @description Destroy semisolid collision

//Inherit event from parent
event_inherited();

//Destroy semisolid collision
with (mytop) instance_destroy();

//Destroy light
if (mylight != noone)
    with (mylight) instance_destroy();

