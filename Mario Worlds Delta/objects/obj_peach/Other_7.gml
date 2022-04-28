/// @description Reset animations

//If the player is moving
if (speed > 0) {
    
    //If the player is climbing
    if (sprite_index == player_climb())
        image_index = 1;
}

//If the player is doing a squat jump
if (sprite_index == player_squat()) {

    image_speed = 0;
    image_index = 3;
}

