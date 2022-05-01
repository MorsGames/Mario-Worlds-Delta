/// @description Magikoopa magic spell

//Item variable
int = 0;

//Angle
angle = 0;

//Palette
pal = 0;

//Leave a trail
alarm[0] = 4;

//Update palette
alarm[1] = 2;

//Move towards the player
if (instance_exists(obj_playerparent))
    move_towards_point(obj_playerparent.x, obj_playerparent.y, 2);
else
    move_towards_point(obj_controller_level.x, obj_controller_level.y, 2);

