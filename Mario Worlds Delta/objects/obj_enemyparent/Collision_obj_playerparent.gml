/// @description Collision with the player

//If the player is invulnerable, deny event
if (instance_exists(obj_invincibility))
exit;

//If the enemy is invulnerable to stomp or the player is invulnerable
if (stomp != -1)
|| (other.invulnerable == -1) {

    //If the player is sliding down a slope
    if (vulnerable < 99)
    && (other.sliding == true) {
    
        //Get points based on combo
        if (other.hitcombo == 0) { //200 points
        
            audio_stop_play_sound(snd_kick2, 0, false);
            with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(2);
        }
        else if (other.hitcombo == 1) { //400 points
        
            audio_stop_play_sound(snd_kick3, 0, false);
            with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(3);
        }
        else if (other.hitcombo == 2) { //800 points
        
            audio_stop_play_sound(snd_kick4, 0, false);
            with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(4);
        }
        else if (other.hitcombo == 3) { //1000 points
        
            audio_stop_play_sound(snd_kick5, 0, false);
            with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(5);
        }
        else if (other.hitcombo == 4) { //2000 points
        
            audio_stop_play_sound(snd_kick6, 0, false);
            with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(6);
        }
        else if (other.hitcombo == 5) { //4000 points
        
            audio_stop_play_sound(snd_kick7, 0, false);
            with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(7);
        }
        else if (other.hitcombo == 6) { //8000 points
        
            audio_stop_play_sound(snd_kick8, 0, false);
            with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(8);
        }
        else if (other.hitcombo > 6) { //1-UP
        
            //Play 'Kick8' sound
            audio_stop_play_sound(snd_kick8, 0, false);
            
            //Get lives based on enemy
            if (other.hitcombo > 7)
            && ((object_index == obj_wiggler) || (object_index == obj_wiggler_body)) {
            
                //Get 2UP
                with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                    event_user(10);                
            }
            else {
            
                //Get 1UP
                with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                    event_user(9);
            }                    
        }
            
        //Kill the enemy
        event_user(0);        
        
        //Create 'Spinthump' effect
        instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinthump);
                
        //Increment hitcombo
        other.hitcombo++;   
    }
    
    //Otherwise, if the player is not sliding
    else {
    
        //If the player is above the enemy
        if (other.bbox_bottom < bbox_top-vspeed+5) {
    
            //If the player is spin jumping
            if (stomp != 3)
            && (stomp != 4)
            && ((other.jumpstyle == 1) || (global.mount > 0)) {
    
                //If this enemy is not immune to spin jumps
                if (stomp == 0)
                || ((stomp == 1) && (global.mount > 0)) {
                
                    //Create spin smoke effect
                    instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinsmoke);
                    
                    //Get points based on combo
                    if (other.hitcombo <= 6)
                        with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) event_user(2+obj_playerparent.hitcombo);
                    else
                        with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) event_user(9);
                    
                    //Increment combo
                    other.hitcombo++;
                    
                    //Bounce against if riding or just stop
                    if (global.mount > 0) {
                    
                        //Bounce
                        with (other) event_user(1);
                        
                        //Create two fireballs if the player is wearing a red shoe
                        if (global.mount == 2)
                        && (global.mountcolour = 1) {
                        
                            with (instance_create(x+12, y+8, obj_fireball)) hspeed = 1.5;
                            with (instance_create(x-12, y+8, obj_fireball)) hspeed = -1.5;
                        }
                    }
                    else {
                    
                        if (enemy_check() == false)
                            other.vspeed = 0;
                        else
                            with (other) event_user(1);
                    }
                        
                    //Destroy
                    instance_destroy();
                }
                
                //Otherwise, spin on spiky enemies
                else {
                
                    //Play 'Stomp' sound
                    audio_stop_play_sound(snd_stomp, 0, false);
                    
                    //Create spin smoke
                    instance_create(other.x, other.bbox_bottom, obj_spinthump);

                    //Bounce
                    if (!collision_rectangle(other.bbox_left, other.bbox_top, other.bbox_right, other.bbox_bottom, obj_solid, 0, 0))
                    && (!collision_rectangle(other.bbox_left, other.bbox_top, other.bbox_right, other.bbox_bottom, obj_solid_moving, 0, 0))
                        with (other) event_user(1);
                }    
            }
    
            //Regular stomp
            else if ((stomp == 0) || (stomp == 4)) {
            
                //Prevent certain enemies from getting double stomped
                if (vspeed < 0) {
                
                    y = yprevious-1;
                    if (other.vspeed > 0)
                        other.y = other.yprevious;
                }
                
                //Bounce the player
                with (other) event_user(1);
                
                //If the enemy does give points
                if (stomp == 0) {
                
                    //Get points based on combo
                    if (other.hitcombo <= 6) {
                        
                        //If the player stomped once
                        if (other.hitcombo == 0)
                            audio_stop_play_sound(snd_kick2, 0, false);
                        else {  
                        
                            //Get sound index
                            var snd = asset_get_index("snd_kick" + string(other.hitcombo+2));
                            
                            //If the sound exists
                            if (snd > -1)
                                audio_stop_play_sound(snd, 0, false);
                        }
                                            
                        //If the player did 6 or less consecutive stomps
                        with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
                            event_user(2+obj_playerparent.hitcombo);
                    }
                    else {
                    
                        //Play 'Kick 8' sound
                        audio_stop_play_sound(snd_kick8, 0, false);
                    
                        //Get a 1-UP
                        with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
                            event_user(9);
                    }
                    
                    //Increment combo
                    other.hitcombo++;
                }
                
                //Create spin smoke
                instance_create(other.x, other.bbox_bottom, obj_spinthump);
                
                //Stomp the enemy
                event_user(1);           
            }
        }
    
        //Otherwise, hurt the player
        else
            with (other) event_user(0);
    }
}

