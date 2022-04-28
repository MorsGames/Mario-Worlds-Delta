/// @description Freeze all object and begin animation

//Delete the pre-freeze
surface_free(global.prefreeze);

//Create a screenshot
back = background_create_from_surface(application_surface, 0, 0, global.gw*2, global.gh*2, 0, 0);

//Deactivate all instances
instance_deactivate_all(1);

//Activate HUD
instance_activate_object(obj_hud);

//Activate music player
instance_activate_object(obj_audio_loop_sound);

//Activate collisions
instance_activate_object(obj_collisionparent);

//Activate lighting
instance_activate_object(obj_lightcontrol);
instance_activate_object(obj_lightparent);
with (obj_lightcontrol) visible = 1;
with (obj_lightparent) visible = 1;

//Activate cape
instance_activate_object(obj_cape);
with (obj_cape) image_alpha = 0;

//Activate water tides
instance_activate_object(obj_water_tides);
with (obj_water_tides) visible = 1;

//Activate effects
instance_activate_object(obj_effectsparent);
with (obj_effectsparent) visible = 1;

//Activate rain object
instance_activate_object(obj_rainmaker);
with (obj_rainmaker) visible = 1;

//Activate controller object
instance_activate_object(obj_controller);

//Activate the player object
instance_activate_object(obj_playerparent);
with (obj_playerparent) {

    //Disable gravity
    gravity_enable = false;
    
    //Save movement
    event_user(13);
    
    //Make invisible
    visible = false;
}

//Deactivate particles
with (obj_rainmaker) event_user(0);

//Make the object visible
visible = true;

//Start loop
alarm[2] = 1;

