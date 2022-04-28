/// @description Wrench logic

//Gravity
gravity = 0.02;
    
//Destroy when outside
if (outside_view(16))
    instance_destroy();

