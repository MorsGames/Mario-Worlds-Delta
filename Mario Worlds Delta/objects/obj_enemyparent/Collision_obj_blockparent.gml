/// @description Collision with bumped blocks

//If this object is not vulnerable to blocks
if (vulnerable < 99) 
&& (!outside_view(sprite_get_width(sprite_index))) {
    
    if (other.vspeed < 0)
    && (vspeed == 0)
    && (bbox_bottom < other.yprevious+5) {
    
        //Play 'Kick sound
        audio_stop_play_sound(snd_kick, 0, false);
    
        //Kill or flip the enemy
        event_user(7);
        
        //Create 'Spinthump' effect
        instance_create(round(bbox_left+bbox_right)/2, other.bbox_top, obj_spinthump);
            
        //Get 100 points
        with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
            event_user(1);
    }
}

//Otherwise
else
    event_inherited();

