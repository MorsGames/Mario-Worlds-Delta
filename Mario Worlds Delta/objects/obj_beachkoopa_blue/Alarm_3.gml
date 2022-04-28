/// @description Kick object

//Deny, if stomped
if (sprite_index == stompsprite) then exit;

//If object is somehow gone
if (!instance_exists(idd)) {

    //Walk as normal
    alarm[2] = 20;
    hspeed = 0;
    
    //Set funny sprite
    sprite_index = spr_beachkoopa_blue;
    
    //Exit event
    exit;
}

if (!initem) {

    //If idd is dectected 
    if (idd) {
    
        //Set the kick sprite
        sprite_index = spr_beachkoopa_blue_kick;
        
        //Play 'Kick' sound
        audio_stop_play_sound(snd_kick, 0, false);        
        
        //Kick the special object
        if (idd.object_index == obj_shell || idd.object_index == obj_shell_kicked) {
        
            //Account for the no longer used shell
            oldidd = idd;
            
            //Remove ID 
            idd = noone;
            
            //Set shell parameters
            with (instance_create(oldidd.x, oldidd.y, obj_shell_kicked)) {
            
                hspeed = (1*other.xscale)*(2.7+(abs(other.hspeed)/4));
                sprite_index = other.oldidd.sprite_index;
                koopainside = other.oldidd.koopainside;
                flip = other.oldidd.flip;
            }
            
            //Destroy the shell
            with (oldidd) instance_destroy();
            
        }
        //Otherwise if it's a normal object
        else event_user(8); //Kick event (long code)
    }
    
    //Go back to normal
    alarm[2] = 15;
    
    //Remove kick
    alarm[5] = 6;

}
else alarm[3] = 5;

