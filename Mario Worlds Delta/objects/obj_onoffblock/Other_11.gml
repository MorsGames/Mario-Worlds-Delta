/// @description Allow block to be hit again and swap blocks

//Play 'Switch' sound
audio_stop_play_sound(snd_switch, 0, false);

//Allow block hit
ready = 0;

//Swap blocks
global.onoff_block = !global.onoff_block;

//Swap Red / Blue blocks
with (obj_onoffplatform_red) event_user(global.onoff_block);
with (obj_onoffplatform_blue) event_user(global.onoff_block);

//Swap spike blocks
with (obj_spikeblock_red) event_user(global.onoff_block);
with (obj_spikeblock_blue) event_user(global.onoff_block);

//Swap conveyor belts
with (obj_conveyorparent) event_user(0);

