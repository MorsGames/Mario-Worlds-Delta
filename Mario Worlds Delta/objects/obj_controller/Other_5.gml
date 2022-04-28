/// @description Prepare to fade to black

//Remember last room
last_room = room;

//Fade to black
mode = 1;

//Set the pixel size
size = 0;

//Take a screenshot
back = background_create_from_surface(application_surface, 0, 0, global.gw*2, global.gh*2, 0, 0);

//Set alarm to execute when the next room starts
alarm[1] = 1;

