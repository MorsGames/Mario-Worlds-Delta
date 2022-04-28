/// @description Jump

//Set the sprite
sprite_index = spr_superkoopa_blue_fly;

//Set the jump state
jumping = 1;
jumpy = y;

//Boost jump
y--;

//Set the vertical speed
if (swimming == false)
    vspeed = -4;
else
    vspeed = -1;

