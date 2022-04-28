/// @description Fire spit from a jumping piranha plant

//Animate
image_speed = 0.2;

//Move
vspeed = -4;
gravity = 0.2;

//Change depth
alarm[0] = 6;

//Create light if required
if (instance_exists(obj_lightcontrol)) {

    mylight = instance_create(0, 0, obj_light_npc);
    with (mylight) {

        target = other.id;
        radius = 16;
        yoffset = 0;
        image_blend = make_colour_rgb(248, 144, 32);
    }
}
else
    mylight = noone;

