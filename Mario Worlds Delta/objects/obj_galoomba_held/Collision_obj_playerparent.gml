/// @description Interact with the player

//If the player is invulnerable, exit this event
if (instance_exists(obj_invincibility))
exit;

//If the player is sliding down a slope
if (vulnerable < 99)
&& (other.sliding == true) {

    //Get points based on combo
    if (other.hitcombo == 0) { //200 points
    
        audio_stop_play_sound(snd_kick2, 0, false);
        with (instance_create((bbox_left+bbox_right)/2, bbox_top, obj_score))
            event_user(2);
    }
    else if (other.hitcombo == 1) { //400 points
    
        audio_stop_play_sound(snd_kick3, 0, false);
        with (instance_create((bbox_left+bbox_right)/2, bbox_top, obj_score))
            event_user(3);
    }
    else if (other.hitcombo == 2) { //800 points
    
        audio_stop_play_sound(snd_kick4, 0, false);
        with (instance_create((bbox_left+bbox_right)/2, bbox_top, obj_score))
            event_user(4);
    }
    else if (other.hitcombo == 3) { //1000 points
    
        audio_stop_play_sound(snd_kick5, 0, false);
        with (instance_create((bbox_left+bbox_right)/2, bbox_top, obj_score))
            event_user(5);
    }
    else if (other.hitcombo == 4) { //2000 points
    
        audio_stop_play_sound(snd_kick6, 0, false);
        with (instance_create((bbox_left+bbox_right)/2, bbox_top, obj_score))
            event_user(6);
    }
    else if (other.hitcombo == 5) { //4000 points
    
        audio_stop_play_sound(snd_kick7, 0, false);
        with (instance_create((bbox_left+bbox_right)/2, bbox_top, obj_score))
            event_user(7);
    }
    else if (other.hitcombo == 6) { //8000 points
    
        audio_stop_play_sound(snd_kick8, 0, false);
        with (instance_create((bbox_left+bbox_right)/2, bbox_top, obj_score))
            event_user(8);
    }
    else if (other.hitcombo > 6) { //1-UP
    
        audio_stop_play_sound(snd_1up, 0, false);
        audio_stop_play_sound(snd_kick8, 0, false);
        with (instance_create((bbox_left+bbox_right)/2, bbox_top, obj_score))
            event_user(9);                    
    }
        
    //Kill the enemy
    event_user(0);        
    
    //Create 'Spinthump' effect
    instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinthump);
            
    //Increment hitcombo
    other.hitcombo++;   
}

//Otherwise
else {

    //If the shell has not been kicked up
    if (vspeed > -1) {

        //If the player is above the shell
        if (other.vspeed > 0)
        && (other.bbox_bottom < bbox_top-vspeed+5)
        && ((other.jumpstyle = 1) || (global.mount == 1)) {
        
            //Create spin smoke effect
            instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinsmoke);
            
            //Get points based on combo
            if (other.hitcombo <= 6) //If the player did 6 or less consecutive stomps
                with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) event_user(2+obj_playerparent.hitcombo);
            else {
            
                audio_stop_play_sound(snd_1up, 0, false);
                with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) 
                    event_user(9);
            }
            
            //Increment combo
            other.hitcombo++;
            
            //Bounce against if riding or just stop
            if (global.mount == 1)
                with (other) event_user(1);
            else
                other.vspeed = 0;
                
            //Destroy
            instance_destroy();            
        }
    
        //If the player is below the shell
        else if (other.bbox_bottom > yprevious+5) {
    
            //If the item can be held and the player can hold it
            if (can_hold())
            && (sprite_height < 17) {
            
                //Make the player hold it
                other.holding = 1;
                
                //Hold
                held = 1;
                
                //Stop movement
                speed = 0;
                gravity = 0;
            }
            
            //Otherwise
            else if (held == 0) {
            
                //Play 'Kick' sound
                audio_stop_play_sound(snd_kick, 0, false);
                
                //Create thump
                instance_create(x, y+8, obj_spinthump);
                
                //Set the vertical speed
                vspeed = -2;
                
                //Reset alarms
                alarm[0] = 312;
                alarm[1] = 432;
                image_speed = 0.15;
                
                //Visually kick the item
                with (other) event_user(2);
                
                //If the player is at the left of the block
                if (other.x < x) {
                
                    //Set the horizontal spee
                    hspeed = (2.4+(abs(obj_playerparent.hspeed)/4));
                    
                    //Set up the scale
                    image_xscale = 1;
                }
                    
                //Otherwise, if the player is at the right of the block
                else if (other.x > x) {
                
                    //Set the horizontal spee
                    hspeed = -(2.4+(abs(obj_playerparent.hspeed)/4));
                    
                    //Set up the scale
                    image_xscale = -1;
                }                        
            }
        }
    }
}

