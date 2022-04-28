/// @description Airship Cannon

/*
**  This item uses creation code!
**
**  direct = Direction of the cannon balls
**      0: Right
**      45: Right-Up
**      90: Up
**      135: Up-Left
**      180: Left
**      225: Down-Left
**      270: Down
**      315: Down-Right
*/

//Default values:
direct = 0;

//Start shooting
alarm[0] = 90;

//Base variables
u = 0;
d = 0;
l = 0;
r = 0;
event_user(0);

//Make this object solid
instance_create(x, y, obj_solid);

/* */
/*  */
