/// @description Start moving raft parts

//Set the horizontal speed
if (!place_meeting(x, y, obj_left))
    hspeed = 1;
else
    hspeed = -1;

//Start moving all raft parts
ready = 1;
if (myleft != noone)
    with (myleft) event_user(0);

