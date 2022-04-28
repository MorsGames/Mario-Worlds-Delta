/// @description Reset animations

//If the player is moving
if (speed > 0) {
    
    //If the player is climbing
    if (sprite_index == player_climb())
        image_index = 1;
}

