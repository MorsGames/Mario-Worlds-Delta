/// @description Custom stomp event

//Inherit event from parent...
event_inherited();

//...but destroy the flame object if it exists
if (flame != noone)
    with (flame) instance_destroy();

