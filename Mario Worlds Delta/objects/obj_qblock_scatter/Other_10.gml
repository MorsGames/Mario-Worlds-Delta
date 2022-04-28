/// @description Create a coin

//Play 'Big Coin' sound
audio_stop_play_sound(snd_coin_big, 0, false);

//Repeat 10 times
repeat (10) {

    //Turn into a coin
    with (instance_create(x+8, y-16, obj_coin_alt)) {
    
        //Set horizontal speed
        hspeed = random_range(-1, 1);
        
        //Set vertical speed
        vspeed = random_range(-4, -1);
        y--;
                
        //Apply gravity to the coin
        ready = 1;
        
        //Disable alarms
        alarm[0] = -1;
        alarm[1] = -1;        
        
        //Give 200 points after collection
        nopoints = true;                  
    }
}

