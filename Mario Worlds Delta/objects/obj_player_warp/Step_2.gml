/// @description Animate

//If moving vertically
if (vspeed != 0) {

    //Set the sprite
    sprite_index = player_spin();
    
    //Do not animate
    image_speed = 0;
    image_index = 1;
}

//Otherwise
else {

    //Animate
    image_speed = 0.15;    
    
    //Set the sprite
    if (holding == 0)
        sprite_index = player_walk();
    else
        sprite_index = player_hold2();
}

