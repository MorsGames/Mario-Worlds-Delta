/// @description Collision with the player

//If the player is invulnerable, deny event
if (instance_exists(obj_invincibility))
exit;

//If the enemy is invulnerable to stomp or the player is invulnerable
if (stomp != -1)
|| (other.invulnerable == -1) {
    
    //If the player is above the enemy
    if (other.bbox_bottom < bbox_top-vspeed+5) {

        //Regular stomp
        if ((stomp == 0) || (stomp == 4)) {
        
            //Prevent certain enemies from getting double stomped
            if (vspeed < 0) {
            
                y = yprevious-1;
                if (other.vspeed > 0)
                    other.y = other.yprevious;
            }
            
            //Bounce the player
            with (other) event_user(1);
        
            //Create spin smoke
            instance_create(other.x, other.bbox_bottom, obj_spinthump);
            
            //Play 'Stomp' sound
            audio_stop_play_sound(snd_stomp, 0, false);
            
            //Stomp the enemy
            if (stomp == 0) {
            
                //If HP is running out...
                if (hp > 1) {
                
                    //Hurt event
                    event_user(1);        
                    
                    //Become invunerable for now
                    stomp = 2;     
                    
                    //Lose HP
                    hp--;
                    
                    //Play 'Stun' sound
                    audio_play_sound(snd_stun, 0, false);
    
                }   
                //Otherwise...
                else {
                
                    //Deth
                    stomp = -1;
                    
                    //Deth event 
                    event_user(10);
                    
                    //Final HP
                    hp = 0;
                    
                    //Play 'Stun' sound
                    audio_play_sound(snd_stun, 0, false);  
                }
            }

        }
    }

    //Otherwise, hurt the player
    else
        with (other) event_user(0);
}

