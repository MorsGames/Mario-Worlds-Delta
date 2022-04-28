/// @description A musical note

//Do not animate
image_speed = 0;
image_index = choose(0, 1);

//Scale
scale = 1;

//Set up a random colour
image_blend = merge_colour(make_colour_hsv(random(255), 255, 255), c_white, 0.5);

//Gravity
gravity = 0.1;

