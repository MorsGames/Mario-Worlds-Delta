/// @description Lava tides

//Animate
image_speed = 0.1;
image_index = 1;

//Set depth
depth = -7;

//Make the tide rise/shrink
alarm[0] = 360;

//Generate cinder
alarm[2] = 30;

//Create a lava surface
lava = instance_create(x, y, obj_lava);
with (lava) {

    visible = false;
    image_xscale = room_width/16;
}

//Create lighting
if (instance_exists(obj_lightcontrol)) {
    
    //Top light    
    with (instance_create(x, y, obj_light_lava_top)) {
    
        image_blend = c_orange;
        target = other.id;
    }
    
    //Bottom light
    with (instance_create(x, y, obj_light_lava_bottom)) {
    
        image_blend = c_orange;
        target = other.id;
    }
}

