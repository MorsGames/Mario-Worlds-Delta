/// @description Airship Bomb Cannon

/*
**  This item uses creation code!
**
**  direct = Direction of the cannon balls
**      1: Right
**      -1: Left
*/

//Default values:
direct = 1;

//Start shooting
alarm[0] = 90;

//Make this object solid
instance_create(x, y, obj_solid);

/* */
/*  */
