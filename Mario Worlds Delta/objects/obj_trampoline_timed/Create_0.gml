/// @description Timed Trampoline

///A temporary carryable trampoline

/*
**  This item uses creation code!
**
**  time = Time (In seconds) that the trampoline will last upon picking it up.
*/

//Default values
time = 8;

//Inherit event from parent
event_inherited();

//Check if this item has been carried
carried = 0;

//Whether the player is on this trampoline
ready = 0;
s_ready = 0;

/* */
/*  */
