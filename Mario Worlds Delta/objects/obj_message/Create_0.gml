/// @description Displays a message

//Ini section to read
inisection = "NO_MSG";

//Message to display
message = "";

//Manages message animation
ready = 0;

//Scale
scale = 0;

//Is this a switch message? (Closes automatically)
switchmsg = false;

//Create a screenshot
back = background_create_from_surface(application_surface, 0, 0, global.gw, global.gh, 0, 0);

//Deactivate everything except this object
instance_deactivate_all(1);

//Activate persistent object
instance_activate_object(obj_controller);

//Activate the HUD
instance_activate_object(obj_hud);

//Activate music player object
instance_activate_object(obj_audio_loop_sound);

