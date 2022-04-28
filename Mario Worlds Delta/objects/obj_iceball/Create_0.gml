/// @description Iceball

//Inherit event from parent
event_perform_object(obj_physicsparent, ev_create, 0);

//Play 'Iceball' sound
audio_stop_play_sound(snd_iceball, 0, false);

//Stop 'Fireball' sound
audio_stop_sound(snd_fireball);

//Animate
image_speed = 0.2;

//Set the vertical speed
vspeed = 0.5;

//Leave a trail
alarm[0] = 8;

//Destroy after a while
alarm[1] = 120;

//Create light if required
if (instance_exists(obj_lightcontrol)) {

    mylight = instance_create(0, 0, obj_light_npc);
    with (mylight) {
    
        target = other.id;
        radius = 16;
        yoffset = 0;
        image_blend = c_white;
    }
}
else
    mylight = noone;

