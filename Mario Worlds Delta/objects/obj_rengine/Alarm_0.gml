/// @description Start engine

//Create spotlight
if (instance_exists(obj_lightcontrol)) {

    //Create a light
    light = instance_create(x, y, obj_light_rengine);
    
    //With the light
    with (light) {

        //Do not animate
        image_speed = 0;
        image_index = 0;
        
        //Set angle
        image_angle = other.image_angle;
        
        //Set colour
        image_blend = c_orange;
    }
}

//Set the sprite.
sprite_index = spr_rengine_st;

//Set the animation speed.
image_speed = 0.5;

//Make it visible.
visible = 1;

//Play a sound.
if (!outside_view(64))
&& (!audio_is_playing(snd_flames))
    audio_stop_play_sound(snd_flames, 0, false);

