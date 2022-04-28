/// @description Leave a trail

alarm[0] = 8;
with (instance_create(x-8+random(round(16)), y+random_range(0,16), obj_smoke)) {

    image_speed = 0.3;
    sprite_index = spr_sparkle_big;
}

