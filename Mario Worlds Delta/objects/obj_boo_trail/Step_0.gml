/// @description Decrement alpha and destroy

//Decrement alpha
image_alpha -= 0.05;

//Destroy when alpha hits 0.05
if (image_alpha < 0.05)
    instance_destroy();

