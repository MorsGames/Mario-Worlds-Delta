/// @description Default throw / kick event

//Shatter if inside a solid
if (place_meeting(x, y, obj_solid)) {
    
    //Play 'Kick' sound
    audio_stop_play_sound(snd_kick, 0, false);
    
    //Create thump
    instance_create(x, y+8, obj_spinthump);
    
    //Get 100 points
    with (instance_create((bbox_left+bbox_right)/2-8, y, obj_score)) event_user(1);
    
    //Kill
    event_user(0);
}

//Otherwise
else {

    //If 'Up' is pressed, throw it upwards
    if (input_check(input.up)) {
    
        //Play 'Kick' sound
        audio_stop_play_sound(snd_kick, 0, false);
        
        //Create thump
        instance_create(x, y+8, obj_spinthump);
        
        //Set the horizontal speed
        hspeed = obj_playerparent.hspeed/1.5;
        
        //Boost kick
        y--;
        
        //If the item is not in a water surface
        if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
            vspeed = -7;
        else
            vspeed = -3.5;
    }
    
    //Otherwise if 'Down' is pressed, leave it on the ground
    else if (input_check(input.down)) {
        
        //Set the horizontal speed
        hspeed = 0.5*sign(obj_playerparent.xscale);
    }
    
    //Otherwise, if neither 'Up' or 'Down' is pressed
    else {
    
        //Play 'Kick' sound.
        audio_stop_play_sound(snd_kick, 0, false);
    
        //Create thump
        instance_create(x, y+8, obj_spinthump);
        
        //If the player is at the left of the block
        if (obj_playerparent.x < x) {
        
            with (instance_create(x, y, obj_shell_kicked)) {
            
                //Set the horizontal speed
                hspeed = (2.7+(abs(obj_playerparent.hspeed)/4));
                
                //Hereby old shell variables
                sprite_index = other.sprite_index;
                koopainside = other.koopainside;
                flip = other.flip;
                
                //Move up if overlapping a slope
                if (collision_rectangle(x-2, bbox_top, x+2, bbox_bottom, obj_slopeparent, 1, 0))
                    y -= 4;
            }
        }
            
        //Otherwise, if the player is at the right of the block
        else if (obj_playerparent.x > x) {
        
            with (instance_create(x, y, obj_shell_kicked)) {
            
                //Set the horizontal speed
                hspeed = -(2.7+(abs(obj_playerparent.hspeed)/4));
                
                //Hereby old shell variables
                sprite_index = other.sprite_index;
                koopainside = other.koopainside;
                flip = other.flip;
                
                //Move up if overlapping a slope
                if (collision_rectangle(x-2, bbox_top, x+2, bbox_bottom, obj_slopeparent, 1, 0))
                    y -= 4;
            }
        }
            
        //Otherwise, if the player is turning
        else if (obj_playerparent.turnnow == 1) {
                   
            with (instance_create(x, y, obj_shell_kicked)) {
            
                //Set the horizontal speed
                hspeed = (2.7+(abs(obj_playerparent.hspeed)/4));
                
                //Hereby old shell variables
                sprite_index = other.sprite_index;
                koopainside = other.koopainside;
                flip = other.flip;
                
                //Move up if overlapping a slope
                if (collision_rectangle(x-2, bbox_top, x+2, bbox_bottom, obj_slopeparent, 1, 0))
                    y -= 4;
            }
        }
        
        //Destroy
        instance_destroy();                        
    }
    
    //Reset alarms
    offset = 0;
    alarm[0] = 312;
    alarm[1] = 432;
    
    //If the object is underwater, begin swim
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
        swimming = true;
    
    //Otherwise, do not swim
    else
        swimming = false;    
} 

