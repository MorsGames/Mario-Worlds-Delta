/// @description Fire from a firebar

//Do not animate
image_speed = 0;
image_index = 0;

//Do not animate.
angle = 0;

//Does mom exist?
mom = -1;

//Set the distance from the center.
length = 0;

//Set up orange light
if (instance_exists(obj_lightcontrol)) {
    
    with (instance_create(0, 0, obj_light_npc)) {
    
        target = other.id;
        radius = 16;
        yoffset = 0;
        image_blend = make_colour_rgb(248, 144, 32);
    }
}

