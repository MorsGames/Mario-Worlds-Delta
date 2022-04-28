/// @description Default throw / kick event

//Shatter if inside a solid
if (place_meeting(x, y, obj_solid)) {

    //Play 'Bump' sound
    audio_stop_play_sound(snd_bump, 0, false);
    
    //Play 'Kick' sound
    audio_stop_play_sound(snd_kick, 0, false);
    
    //Get 800 points
    with (instance_create((bbox_left+bbox_right)/2-8, y, obj_score)) event_user(1);
    
    //Shatter it
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
        
        //If the item is not overlapping a solid
        if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 1, 0)) {
        
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
    }
    
    //Otherwise if 'Down' is pressed, leave it on the ground
    else if (input_check(input.down)) {
        
        //Set the horizontal speed
        hspeed = 0.5*sign(obj_playerparent.xscale);
    }
    
    //Otherwise, if neither 'Up' or 'Down' is pressed
    else {
        
        //If the player has horizontal speed
        if (obj_playerparent.hspeed != 0) {
        
            //Play 'Kick' sound.
            audio_stop_play_sound(snd_kick, 0, false);
    
            //Create thump
            instance_create(x, y+8, obj_spinthump);
            
            //Kick it
            ready = 1;
            
            //Reset alarms
            alarm[0] = -1;
            alarm[1] = -1;
            image_speed = 1;
            
            //If the player is at the left of the block
            if (obj_playerparent.x < x)
                hspeed = (2.7+(abs(obj_playerparent.hspeed)/4));
                
            //Otherwise, if the player is at the right of the block
            else if (obj_playerparent.x > x)
                hspeed = -(2.7+(abs(obj_playerparent.hspeed)/4));
                
            //Otherwise, if the player is turning
            else if (obj_playerparent.turnnow == 1)            
                hspeed = 2.7*sign(obj_playerparent.xscale);                        
        }
        
        //Otherwise, leave it on the ground
        else
            hspeed = 0.5*obj_playerparent.xscale;
    }
    
    //If the object is underwater, begin swim
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
        swimming = true;
    
    //Otherwise, do not swim
    else
        swimming = false;     
}

