/// @description Collision with kicked shells

//If the enemy is vulnerable
if (vulnerable < 99) 
&& (!outside_view(sprite_get_width(sprite_index))) {

    //Kill the enemy
    event_user(0);
    
    //If the other enemy is a kicked shell
    if (object_index == obj_shell_kicked) {
    
        //If the id is greater than the other id
        if (id > other.id) {
    
            //Play 'Kick' sound
            audio_stop_play_sound(snd_kick, 0, false);
            
            //Create 'Spinthump' effect
            instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinthump);
        
            //Get 1000 points
            with (instance_create(x-8,y,obj_score)) 
                event_user(5);
        }    
    }
    
    else {
        
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

