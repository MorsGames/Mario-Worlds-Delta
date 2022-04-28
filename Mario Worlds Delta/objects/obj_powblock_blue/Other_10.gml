/// @description KA-POW

//Create used POW
instance_create(x, y+8, obj_powblock_active);

//Create POW instance
instance_create(x, y+8, obj_powblock_killer);

//Destroy
instance_destroy();

