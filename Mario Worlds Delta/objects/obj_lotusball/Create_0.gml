/// @description A fireball spit by a lotus ball

//Animate
image_speed = 0.2;

//Enable gravity
ready = 0;
alarm[0] = 100;

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

