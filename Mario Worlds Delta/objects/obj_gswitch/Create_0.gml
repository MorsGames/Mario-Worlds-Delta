/// @description Gray P-Switch

//Inherit event from parent
event_inherited();

//Create light if required
if (instance_exists(obj_controller_lighting)) {

    mylight = instance_create(0, 0, obj_light_npc);
    with (mylight)    
        target = other.id;
}
else
    mylight = noone;

