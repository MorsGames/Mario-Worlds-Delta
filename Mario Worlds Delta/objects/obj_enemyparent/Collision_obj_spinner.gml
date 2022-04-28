/// @description Collision with cape

//Exit if not vulnerable to cape
if (vulnerable == 2)
|| (vulnerable == 3)
    exit;

//If the enemy is vulnerable to cape
if (vulnerable < 2) {
            
    //Kill the enemy
    event_user(7);
    
    //Create 'Spinthump' effect
    instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinthump);
    
    //Get points based on combo
    if (other.hitcombo <= 7) { //If the player did 7 or less consecutive stomps
    
        audio_stop_play_sound(snd_kick, 0, false);
        with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
            event_user(1+obj_playerparent.hitcombo);
    }
    else {
    
        audio_stop_play_sound(snd_1up, 0, false);
        with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
            event_user(9);
    }
}

