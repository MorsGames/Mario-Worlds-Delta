/// @description OINK!

//Play 'Oink' sound
audio_stop_play_sound(snd_oink, 0, false);
        
//Set 'Oink' gain and pitch.
audio_sound_gain(snd_oink, random_range(0.9, 1.0), 0);
audio_sound_pitch(snd_oink, random_range(0.5, 1.0));

//Set the vertical speed
vspeed = -4;
gravity = 0.2;

//Scale
scale = 0;

//Is ready?
ready = 0;

