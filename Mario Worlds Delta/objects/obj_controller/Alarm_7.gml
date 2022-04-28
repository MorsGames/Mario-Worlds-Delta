/// @description Add lives

//If the player got extra lives
if (givelives > 0) {

    //Play '1UP' sound
    audio_stop_play_sound(snd_1up, 0, false);
    
    //Get life
    lives++;
    
    //Decrement spare
    givelives--;
    
    //Give a life after a 1/2 second
    alarm[7] = 30;
}
else
    alarm[7] = 1;

