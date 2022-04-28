/// @description Destroy solid mask and start falling

//Do not animate
image_speed = 0;
image_index = 0;

//Set gravity
gravity = 0.25;

//Destroy solid mask
with (mysolid) instance_destroy()

