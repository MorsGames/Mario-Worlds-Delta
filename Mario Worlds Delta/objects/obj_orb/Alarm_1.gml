/// @description Begin deactivation sequence

//Delete the pre-freeze
surface_free(global.prefreeze);

//Create a screenshot
back = background_create_from_surface(application_surface, 0, 0, global.gw*2, global.gh*2, 0, 0);

//Deactivate all instances
instance_deactivate_all(1);

//Activate the HUD
instance_activate_object(obj_hud);

//Activate HUD
instance_activate_object(obj_hud);
with (obj_hud) {

    //Make it visible
    visible = 1;
    
    //Show 'Course Clear'
    clear = 1;
    
    //Multiplier
    multiplier = 100;
    
    //Set the time to show in the course clear frame
    time = global.time;
    
    //Give an extra life if the time ends in double zero
    if (time mod 100 == 0) {
        
        //Play '1-UP' sound
        audio_stop_play_sound(snd_1up, 0, false);
        
        //Give extra life
        lives++;    
    }
}

//Activate music player
instance_activate_object(obj_audio_loop_sound);

//Activate lighting
instance_activate_object(obj_controller_lighting);
instance_activate_object(obj_lightparent);
with (obj_controller_lighting) visible = 1;
with (obj_lightparent) visible = 1;

//Activate water tides
instance_activate_object(obj_water);
with (obj_water) visible = 1;

//Activate water tides
instance_activate_object(obj_water_tides);
with (obj_water_tides) visible = 1;

//Activate effects
instance_activate_object(obj_effectsparent);
with (obj_effectsparent) visible = 1;

//Activate controller object
instance_activate_object(obj_controller);

//Deactivate particles
with (obj_rainmaker) event_user(0);

//Make the object visible
visible = true;

//Take points out of time and add it to score
alarm[2] = 120;

