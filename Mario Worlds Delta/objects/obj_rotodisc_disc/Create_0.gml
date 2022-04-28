/// @description Spinnin' nuclear waffle

//Animate
image_speed = 0;
palette = 0;

//Leave a trail
alarm[0] = 2;

//Change palette
alarm[1] = 2;

//Angle
angle = 0;

//Light
light = noone;

//Create spotlight
if (instance_exists(obj_lightcontrol)) {

    //Create a light
    light = instance_create(x, y, obj_light_npc);
    
    //With the light
    with (light) {
    
        target = other.id;
        radius = 24;
        yoffset = 0;
        image_blend = make_colour_rgb(248, 144, 32);
    }
}

