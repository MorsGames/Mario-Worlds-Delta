/// @description KA-POW

//Create used POW
with (instance_create(x+8, y+8, obj_powblock_active)) sprite_index = spr_powblock_th;

//Create POW instance
instance_create(x+8, y+8, obj_powblock_killer);

//Destroy
instance_destroy();

