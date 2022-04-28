/// @description Start moving

//Check where the mouse is and move in that direction
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

//Set the speed
speed = 1*xscale;

