/// @description Perform end of bump event

//Create empty block
if (obj_controller_level.switchon == 0)
    instance_create(xstart, ystart, obj_emptyblock);
else
    instance_create(xstart, ystart, obj_coin);

//Destroy
instance_destroy();

