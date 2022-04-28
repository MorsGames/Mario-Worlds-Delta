/// @description Create a new donut

//Create a ticker for the new donut
with (instance_create(xstart+8, ystart+8, obj_donut_ticker)) {

    image_index = 2;
}

//Destroy
instance_destroy();

