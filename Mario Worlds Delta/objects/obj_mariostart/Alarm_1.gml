/// @description End the Mario Start! screen

//Re-activate everything
instance_activate_all();

//Hack the fade script to make it fade out now
with (obj_controller) fade = 0;

//Destroy
instance_destroy();

