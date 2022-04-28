/// @description Stuns or defeats enemies

//Create smoke
with (instance_create(x, y-8, obj_smoke)) {sprite_index = spr_smoke_16; hspeed = 2;}
with (instance_create(x, y-8, obj_smoke)) {sprite_index = spr_smoke_16; hspeed = -2;}

//Combo
hitcombo = 0;

//Destroy
alarm[0] = 2;

