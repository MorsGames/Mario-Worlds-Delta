/// @description Amazing flying hammer bro logic

//If the parent exists
if (instance_exists(parent)) {

    //Move towards parent
    x = parent.x;
    y = parent.y-16;

    //Kill if the block has been bumped
    if (parent.loffset < 0)
    || (parent.roffset < 0) {
    
        //Play 'Kick' sound
        audio_play_sound(snd_kick, 0, false);
    
        //Kill the enemy
        event_user(0);
        
        //Create 'Spinthump' effect
        with (instance_create(round(bbox_left+bbox_right)/2,round(bbox_top+bbox_bottom)/2-8,obj_smoke)) sprite_index = spr_spinthump;
            
        //Get 800 points
        with (instance_create(round(bbox_left+bbox_right)/2-8,y,obj_score)) 
            event_user(4);    
    }
}

