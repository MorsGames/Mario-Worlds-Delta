/// @description Custom stomp script event

//Play 'Split' sound
audio_stop_play_sound(snd_split, 0, false);

//Create big smoke
with (instance_create(x, y-16, obj_smoke)) sprite_index = spr_smoke_48;

//Create two goombas
with (instance_create(x+16, y-8, obj_goomba_hefty)) { vspeed = -3; hspeed = 0.5; }
with (instance_create(x-16, y-8, obj_goomba_hefty)) { vspeed = -3; hspeed = -0.5; }

//Destroy
instance_destroy();

