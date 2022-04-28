/// @description Door

/*
**  This item uses creation code!
**
**  destination = Destination room (Leave as is to not change room.)
**  exit_id     = Warp ID
**  lock        = If true, locks the door (Once unlocked, it will remain open during the rest of the level)
*/

//Default variables
destination = noone;
exit_id = -1;
lock = 0;

//Do not animate
image_speed = 0;

//Check if the door was opened before
alarm[0] = 2;

/* */
/*  */
