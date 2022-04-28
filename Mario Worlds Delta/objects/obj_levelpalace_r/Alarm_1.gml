/// @description Go where the panel takes you

//Remember the player last position in map
with (obj_mapplayer) event_user(0);

//Do not remember checkpoint
global.checkpoint = noone;

//Go to the levelstart screen
room_goto(rm_palaceswitch_r);

