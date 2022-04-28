/// @description Fireball

//Inherit event from parent
event_inherited();

//Play 'Fireball' sound
audio_stop_play_sound(snd_fireball, 0, false);

//Animate
image_speed = 0.2;
    
//Set up orange light
if (instance_exists(obj_lightcontrol)) {
    
    mylight = instance_create(0, 0, obj_light_npc);
    with (mylight) {
    
        target = other.id;
        radius = 16;
        yoffset = 0;
        image_blend = make_colour_rgb(248, 144, 32);
    }
}

