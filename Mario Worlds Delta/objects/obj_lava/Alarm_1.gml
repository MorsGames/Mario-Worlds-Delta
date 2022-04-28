/// @description Generate cinder, but when visible

//Repeat
alarm[1] = 15+round(random_range(0, 15));

//Generate
if (visible == 1)
&& (sprite_index == spr_lava)
    instance_create(x+random_range(4, sprite_width-4), y, obj_blob);

