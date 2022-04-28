/// @description Collision with held/thrown enemies

//If the enemy is vulnerable
if (vulnerable < 99) {

    //If the brick is held
    if (other.held == 1) {
    
        //Play 'Kick' sound
        audio_stop_play_sound(snd_kick, 0, false);
    
        //Kill enemy
        event_user(0);    
        
        //Get 1000 points
        with (instance_create(x-8, bbox_top, obj_score)) event_user(5);
        
        //Create 'Spinthump' effect
        instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinthump);
        
        //Destroy brick
        with (other) event_user(0);
    }
    
    //Otherwise
    else if (other.speed != 0) {
    
        //Kill enemy
        event_user(0);
    
        //Get points based on combo
        if (other.hitcombo == 0) { //200 points
        
            audio_stop_play_sound(snd_kick2, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(2);
        }
        else if (other.hitcombo == 1) { //400 points
        
            audio_stop_play_sound(snd_kick3, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(3);
        }
        else if (other.hitcombo == 2) { //800 points
        
            audio_stop_play_sound(snd_kick4, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(4);
        }
        else if (other.hitcombo == 3) { //1000 points
        
            audio_stop_play_sound(snd_kick5, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(5);
        }
        else if (other.hitcombo == 4) { //2000 points
        
            audio_stop_play_sound(snd_kick6, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(6);
        }
        else if (other.hitcombo == 5) { //4000 points
        
            audio_stop_play_sound(snd_kick7, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score))
                event_user(7);
        }
        else if (other.hitcombo == 6) { //8000 points
        
            audio_stop_play_sound(snd_kick8, 0, false);
            with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score))
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
        
        //Create 'Spinthump' effect
        instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinthump);
        
        //Increment hitcombo
        other.hitcombo++;            
    }
}

