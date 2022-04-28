/// @description Handle various actions

//If the player is riding a yoshi
if (global.mount == 1) {

    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //Keep 'mytop' in position
    mytop.x = xstart;
    mytop.y = ystart;
}

//Otherwise, if the player is not riding a yoshi
else if (global.mount == 0) {

    //If not animating, animate
    if (image_speed == 0) {
    
        image_speed = 0.1;
        image_index = 1;
    }
    
    //Keep 'mytop' away
    mytop.x = -1000;
    mytop.y = -1000;
}

