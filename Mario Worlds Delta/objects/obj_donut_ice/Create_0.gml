/// @description Frozen Donut

//Inherit event from parent
event_inherited();

//Create slippery surface
myice = instance_create(x, y-16, obj_slippery);
myice.image_xscale = sprite_width/16;

