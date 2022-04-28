/// @description Goal tape logic

//If the player exists
if (instance_exists(obj_playerparent)) {

    //If the player is 16 pixels at the right of the tape
    if (obj_playerparent.x > x+16) {
    
        //Play 'Goal' sound
        audio_stop_play_sound(snd_goalgate, 0, false);
        
        //Turn the player onto the goal object
        with (obj_playerparent) {
        
            with (instance_create(x, y, obj_player_clear)) {
            
                vspeed = obj_playerparent.vspeed;
            }
            instance_destroy();
        }
        
        //Destroy the tape
        instance_destroy();
    }
}

//Set position based on vertical speed
pos += vspeed*-1;

//Reverse vertical speed when in given position
if (pos == 0)
|| (pos == 120)
    vspeed = -vspeed;

