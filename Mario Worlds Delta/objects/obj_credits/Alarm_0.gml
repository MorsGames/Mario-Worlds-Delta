/// @description Loop 'Credits' theme

//Open INI
ini_open("MWDMusic.ini");

//Read values
levelmusic  = ini_read_string("Credits", "song_name", 0);
loop_s      = ini_read_real("Credits", "loop_s", 0);
loop_e      = ini_read_real("Credits", "loop_e", 1);
sample_rate = ini_read_real("Credits", "sample_rate", 0);

//Close INI
ini_close();

//Add the sound
global.stream = audio_create_stream(levelmusic);

//Play it
audio_loop_sound(global.stream, loop_s, loop_e, sample_rate, 1);

