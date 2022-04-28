/// @description Set up animation speed

//Animate if damaged
if (sprite_index == spr_charginchuck_damage)
    image_speed = 0.2;
else {

    if (ready == 1)
        image_speed = 0.125;
    else
        image_speed = 0;
}

