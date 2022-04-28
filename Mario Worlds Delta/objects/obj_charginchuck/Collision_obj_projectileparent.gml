/// @description Collision with projectiles

//Decrement fire hits
firehp--;

//If there's one or less hits left
if (firehp <= 0) {
    
    //Play 'Kick' sound
    audio_stop_play_sound(snd_kick, 0, false);
    
    //Get 1000 points
    with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score)) event_user(5);
    
    //Create smoke effect
    with (instance_create(round(bbox_left+bbox_right)/2-8, round(bbox_top+bbox_bottom)/2-8, obj_smoke)) sprite_index = spr_smoke_16;
    
    //Create 3 coins
    repeat (3) {
    
        //Play 'Big Coin' sound
        audio_stop_play_sound(snd_coin_big, 0, false);
    
        //Create the coins
        with (instance_create(x, bbox_top, obj_coin_alt)) {
        
            //Set the horizontal speed
            hspeed = random_range(-0.5, 0.5);
            
            //Disable alarms
            alarm[0] = -1;
            alarm[1] = -1;
            
            //Apply gravity to the coin
            ready = 1;
                                    
            //Jump a bit
            y--;
            if (other.swimming == 0)
                vspeed = random_range(-2, -4);
            else
                vspeed = random_range(-1.5, -3);  
        }
    }
    
    //Perform death event
    event_user(0);
}

//Destroy fireball
with (other) event_user(0);

