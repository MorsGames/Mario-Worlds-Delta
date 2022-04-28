/// @description Collision with yoshi range

//If the enemy is vulnerable to cape
if (gravity == 0)
&& (vulnerable < 99) {
            
    //Kill the enemy
    event_user(7);
    
    //Create 'Spinthump' effect
    instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinthump);
    
    //Get points based on combo
    if (other.hitcombo <= 6) { //If the player did 6 or less consecutive stomps
    
        audio_stop_play_sound(snd_kick, 0, false);
        with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
            event_user(2+obj_playerparent.hitcombo);
    }
    else {
    
        //Play 'Kick' sound
        audio_stop_play_sound(snd_kick, 0, false);
        
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
}

