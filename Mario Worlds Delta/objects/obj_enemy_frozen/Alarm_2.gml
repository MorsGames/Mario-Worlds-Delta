/// @description Leave a trail

alarm[2] = 4;
with (instance_create(bbox_left+random(sprite_width),bbox_top+random(sprite_height),obj_smoke)) {

    sprite_index = spr_sparkle_small_blue;
    image_speed = 0.1;
}

