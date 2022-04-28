/// @description Decrement alpha

image_alpha -= 0.01;
if (image_alpha < 0.01)
    instance_destroy();

