/// @description Boomerang Bro logic

//Default wall collision
event_user(3);

//Default floor collision
event_user(4);

//Manage swimming collision
event_user(8);

//Set up the facing direction.
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

