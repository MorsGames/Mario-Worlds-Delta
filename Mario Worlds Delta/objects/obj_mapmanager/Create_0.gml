/// @description World Map Manager

///Level controller

/*
**  This item uses creation code!
**
**  mapmusic      = Music to play in the map
*/

//Default values
mapmusic = bgm_map1;

//Play music
alarm[0] = 30;

///Create map HUD
alarm[2] = 2;

//Handles water animation
anim = 0;

//Generate a cloud every second
alarm[11] = 60;

if global.savedmount = 1 {
    global.mount = 1;
    global.mountcolour = global.savedmountcolour;
    global.savedmount = 0;
    global.savedmountcolour = 0;
}

/* */
/*  */
