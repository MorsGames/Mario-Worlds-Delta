/// @description Generate sparkle effect if visible

if (image_alpha == 0)
exit;

alarm[0] = 30;
with (instance_create(x+random(round(16)), y+random(round(16)), obj_smoke)) {

    image_speed = 0.1;
    sprite_index = spr_sparkle_small_blue;
}

