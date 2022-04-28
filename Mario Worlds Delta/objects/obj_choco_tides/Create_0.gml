/// @description Chocolate tides

//Animate
image_speed = 0.1;
image_index = 1;

//Set depth
depth = -7;

//Make the tide rise/shrink
alarm[0] = 360;

//Create a water surface
lava = instance_create(x,y,obj_lava);
with (lava) {

    visible = false;
    image_xscale = room_width/16;
    sprite_index = spr_lava_choco;
}

