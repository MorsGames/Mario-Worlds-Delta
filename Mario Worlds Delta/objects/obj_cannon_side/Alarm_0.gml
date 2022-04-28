/// @description Shoot a cannonball

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Play 'Explosion' sound
audio_stop_play_sound(snd_explosion, 0, false);

//Create cannon ball
with (instance_create(x+lengthdir_x(12, direct), y+lengthdir_y(12, direct), obj_cannon_ball)) motion_set(other.direct,1.5);

//Repeat after 3 seconds
alarm[0] = 180;

