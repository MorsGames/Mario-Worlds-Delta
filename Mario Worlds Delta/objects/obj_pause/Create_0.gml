/// @description Pause

//Pause all sounds
audio_pause_all();

//Play 'Pause' sound
audio_stop_play_sound(snd_pause, 0, false);

//Set up the pause text
i = floor(random_range(0, 100))

//If i is lower than 98
if (i > 98)
    pause_text = "SPACE FOR RENT!";
else
    pause_text = "GAME PAUSED";

//Create a screenshot
back = background_create_from_surface(application_surface, 0, 0, global.gw, global.gh, 0, 0);

//Deactivate all instances.
instance_deactivate_all(true);

//Activate controller
instance_activate_object(obj_controller);

//Activate the HUD
instance_activate_object(obj_hud);

