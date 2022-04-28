/// @description Unpause

if (keyboard_check(vk_alt))
exit;

//Play 'Pause' sound
audio_stop_play_sound(snd_pause, 0, false);

//Resume all sounds
audio_resume_all();
            
//Activate everything
instance_activate_all();

//Delete the screenshot if it exists.
if (background_exists(back)) {

    background_delete(back);
}

//Destroy the message box
instance_destroy();

