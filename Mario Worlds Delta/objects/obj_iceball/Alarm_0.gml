/// @description Leave a trail

//Create effect
with (instance_create(x-4+random(8),y+random(8),obj_smoke)) {

    image_speed = 0.1;
    sprite_index = spr_sparkle_small_blue;
}

//Repeat the process
alarm[0] = 8;

