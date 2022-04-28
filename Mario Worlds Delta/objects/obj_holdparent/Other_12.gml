/// @description Default throw / kick event

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
    
    //Otherwise, get embed
    else
        inwall = true;
}

//Otherwise if 'Down' is pressed, leave it on the ground
else if (input_check(input.down)) {
    
    //Check if the object is stuck on a solid and move it
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 1, 0)) {
    
        //Move it to a safe position
        inwall = true;
        
        //Stop it
        hspeed = 0;
    }
    
    //Set the horizontal speed
    hspeed = 0.5*sign(obj_playerparent.xscale);
}

//Otherwise, if neither 'Up' or 'Down' is pressed
else {

    //If the item is not overlapping a solid.
    if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom,obj_solid, 0, 0)) {
        
        //If the player has horizontal speed
        if (obj_playerparent.hspeed != 0) {
        
            //Play 'Kick' sound.
            audio_stop_play_sound(snd_kick, 0, false);
    
            //Create thump
            instance_create(x, y+8, obj_spinthump);
            
            //If the item is underwater
            if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
                vspeed = -1;
            else
                vspeed = -2;
            
            //If the object is not on contact with a slope
            if (!collision_rectangle(x-2, bbox_bottom-4, x-2, bbox_bottom, obj_slopeparent, 1, 0))
                hspeed = (obj_playerparent.hspeed+1*obj_playerparent.xscale)/1.5;
                
            //Otherwise, do not apply horizontal speed
            else
                hspeed = 0.5*sign(obj_playerparent.xscale);
        }
        
        //Otherwise, leave it on the ground
        else
            hspeed = 0.5*obj_playerparent.xscale;
    }
    else
        inwall = true;
}

//If the object is underwater, begin swim
if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
    swimming = true;

//Otherwise, do not swim
else
    swimming = false;     

