/// @description Destroy lights if they exist and do main event

event_inherited();
if (mylight != noone)
    with (mylight) instance_destroy();

