/// @description Leave a trail

//Repeat the process
alarm[0] = 2;

//Leave a trail
with (instance_create(x-8+random(round(16)), y+random_range(0,16), obj_smoke)) {

    image_speed = 0.3;
    sprite_index = spr_sparkle_big;
}

