/// @description Chargin' Chuck stomp event

//Play 'Stomp' sound
audio_stop_play_sound(snd_stomp, 0, false);

//If the chargin chuck is not damaged
if (sprite_index != spr_charginchuck_damage) {

    //If the chargin chuck has hp left
    if (hp > 1) {
    
        //If the firehp is lower than 2
        if (firehp <= 1) {
        
            //Get 800 points
            with (instance_create((bbox_left+bbox_right)/2-8, y, obj_score)) event_user(4);
            
            //Create stomped enemy object
            with (instance_create(x, y, obj_enemy_stomped)) {
    
                //Set the sprite
                sprite_index = other.stompsprite;
                
                //Set the frame
                image_index = other.image_index;
                
                //Set the facing direction
                image_xscale = other.xscale;
            }
            
            //Destroy
            instance_destroy();        
        }
        
        //Otherwise
        else {
    
            //Play 'Stun' sound
            audio_play_sound(snd_stun, 0, false);
            
            //Set the damage frame
            sprite_index = spr_charginchuck_damage;
            
            //Animate
            image_speed = 0;
            image_index = 0;
            
            //Decrement health
            hp--;
            
            //Decrement fire hits
            firehp -= 2;
            
            //Deny movement
            alarm[10] = -1;
        }
            
        //Make the player jump in a direction depending where it is
        if (obj_playerparent.x < x)
            obj_playerparent.hspeed = -1.5;
        else
            obj_playerparent.hspeed = 1.5;
    }
    
    //Otherwise, get 800 points and kill
    else {
    
        //Play 'Kick' sound
        audio_stop_play_sound(snd_kick, 0, false);
    
        //Get 800 points
        with (instance_create((bbox_left+bbox_right)/2-8, y, obj_score)) event_user(4);
        
        //Create stomped enemy object
        with (instance_create(x, y, obj_enemy_stomped)) {

            //Set the sprite
            sprite_index = other.stompsprite;
            
            //Set the frame
            image_index = other.image_index;
            
            //Set the facing direction
            image_xscale = other.xscale;
        }
        
        //Destroy
        instance_destroy();
    }
}

