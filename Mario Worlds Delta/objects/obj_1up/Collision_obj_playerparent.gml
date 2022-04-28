/// @description Award an extra life

//Get a life
with (instance_create(x-8, y, obj_score)) event_user(9);

//Create ring
instance_create(x, y+8, obj_ring);

//Destroy
instance_destroy();

