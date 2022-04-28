/// @description On / Off Block

//Inherit event from parent
event_inherited();

//Animate slower
image_speed = 0.05;

//Turn into a off block if deactivated
if (global.onoff_block == 1) {

    sprite_index = spr_onoffblock_off;
}

//Create a light if the controller exists
light = instance_create(x+8, y+16, obj_light_static);

//Grade
grade = 1;

