/// @description Monty digging spot

//Animate
image_speed = 0.125;

//Set monty type
if (place_snapped(32,16))
    type = 1;
else
    type = 0;

//If there's a semisolid below
if (place_meeting(x, y+1, obj_semisolid))
    sprite_index = spr_montymole_dig2;

