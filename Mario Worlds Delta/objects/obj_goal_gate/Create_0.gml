/// @description Goal Gate (Left)
/// @param Left

/*
**  This item uses variable definitions
**
**  secret      = To open up the secret path in the map
*/

//Do not animate
image_speed = 0;
image_index = 0;

//Create tape
instance_create(x, y+128, obj_goal_tape);

//Create right part of the gate
instance_create(x+32, y, obj_goal_gate_front);

/* */
/*  */
