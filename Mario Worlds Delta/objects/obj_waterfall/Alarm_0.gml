/// @description Create smoke effect

//Repeat
alarm[0] = 2;

//Check for water and create effect if it exists
var water = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_swim, 0, 0);
if (water) {

    with (instance_create(x+random(sprite_width), bbox_bottom+random_range(-2, 4), obj_smoke_water))
        depth = -8;
}

