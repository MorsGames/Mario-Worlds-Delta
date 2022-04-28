/// @description Frozen donut logic

//Inherit event from parent
event_inherited();

//Manage position from slippery surface
if (instance_exists(myice)) {

    myice.x = x;
    myice.y = y-16;
}

