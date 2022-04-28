/// @description Pow Block

//Inherit event from parent
event_inherited();

//Animate
image_speed = 0.1;

//Whether the player has kicked this pow
ready = 0;

//Make it solid on top
mytop = instance_create(x-8, y+1, obj_semisolid);

//Create light if required
if (instance_exists(obj_lightcontrol)) {

    mylight = instance_create(0, 0, obj_light_npc);
    with (mylight)    
        target = other.id;
}
else
    mylight = noone;

