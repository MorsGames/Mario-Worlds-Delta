/// @description A microgoomba, stay away if you don't want to lose your jump ability.

//Animate.
image_speed = 0.05;

//Hang on Mario
ready = 0;
flee = 0;
xfix = 0;
yfix = 0;

//Set the path
path_start(pth_microgoomba, 1, path_action_continue, 0);

