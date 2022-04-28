/// @description Door player logic

//Do not animate
image_speed = 0;
image_index = 0;

//If the player is not holding anything
if (holding == 0)
    sprite_index = player_idle();
else
    sprite_index = player_hold();

