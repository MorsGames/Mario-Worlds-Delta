/// @description Destroy

//Create smoke effect
with (instance_create(x+8, y+8, obj_smoke)) sprite_index = spr_smoke_16;

//Destroy
instance_destroy();

