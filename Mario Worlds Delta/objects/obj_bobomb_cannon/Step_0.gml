/// @description Cannon Bob-Omb logic

//Collision with enemies
event_user(2);

//Default wall collision
event_user(3);

//Default floor / ceiling collision
event_user(4);

//If generated from a bubble
if (hspeed == 0)
&& (gravity == 0) {

    //If the player does not exist or it's at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1;
    else
        hspeed = 1;
}

//Set the scale
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

