/// @description Glow Block

//Inherit event from parent
event_inherited();

//Animate
image_speed = 0.1;

//Create light if required
if (instance_exists(obj_lightcontrol)) {

    mylight = instance_create(0, 0, obj_light_npc);
    with (mylight) {
    
        target = other.id;
        radius = 16;
        yoffset = 8;
    }
}
else
    mylight = noone;

