/// @description Trolloomba logic

//Collision with enemies
event_user(2);

//Default wall collision
event_user(3);

//Default floor / ceiling collision
event_user(4);

//Set the scale
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

