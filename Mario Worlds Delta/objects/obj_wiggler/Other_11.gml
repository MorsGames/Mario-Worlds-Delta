/// @description Get stunned

//If the wiggler is not mad
if (state == 0) {

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
        
        //Get lives based on combo
        switch (other.hitcombo) {
        
            case (7): {
            
                //Get a 1-UP
                with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
                    event_user(9);
            } break;
            
            case (8): {
            
                //Get 2-UP
                with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
                    event_user(10);
            } break;
            
            case (9): {
            
                //Get 3-UP
                with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
                    event_user(11);
            } break;
            
            default: {
            
                //Get 5-UP
                with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
                    event_user(12);
            } break;
        }
    }
    
    //Increment combo
    other.hitcombo++;
    
    //Kill flower
    with (instance_create(x, y, obj_enemy_dead)) {
    
        sprite_index = spr_wiggler_flower;
        image_xscale = other.xscale;
        vspeed = -4;
        nospin = 1;
    }
        
    //Stop movement
    speed = 0;
    
    //Stunned state
    state = 1;
    
    //New length for body parts
    closeness = 8;
    
    //Sprite
    sprite_index = spr_wiggler_mad;
    
    //Stop animation
    image_speed = 0;
    
    //Update length and sprite
    for (i = 1; i < seg; i++)  {
    
        mybody[i].x = oldx[i*closeness];
        mybody[i].y = oldy[i*closeness];
        mybody[i].image_speed = 0;
        mybody[i].sprite_index = spr_wiggler_mad_body;
    }
    
    //Reset coodirnate values
    amount_previous = 85;
    
    //Cycle between palettes
    alarm[2] = 1;
    
    //Go after the player
    alarm[1] = 65;
}
else
audio_stop_play_sound(snd_stomp, 0, false);

