/// @description audio_stop_play_sound(sound_id, priority, loop);
/// @param sound_id
/// @param  priority
/// @param  loop
function audio_stop_play_sound() {

	/*
	**  Name:
	**      audio_stop_play_sound(sound_id, priority, loop);
	**
	**  Function:
	**      Stops the sound given in sound_id and plays it again
	*/

	//Stop
	audio_stop_sound(argument[0]);

	//Play
	audio_play_sound(argument[0], argument[1], argument[2]);



}
