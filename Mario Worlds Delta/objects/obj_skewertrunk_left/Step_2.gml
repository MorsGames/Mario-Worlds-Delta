/// @description Leftward skewer logic

//Check for a wall to the left
var wall = collision_rectangle(bbox_left-1, bbox_top, bbox_left-1, bbox_bottom, obj_solid, 0, 0);

//If the skewer is not on the wall.
if (ready == 0) {

    //When moving left
    if (hspeed < 0) {
        
        //Handle wall collision
        if (wall)
        && (wall.x < xstart)
        && (bbox_left > wall.xprevious-5)
            x = wall.bbox_right+1;
    }
    
    //Check for wall objects
    if ((collision_rectangle(bbox_left-1, bbox_top, bbox_left-1, bbox_bottom, wall, 0, 0)) && (wall.x < xstart)) {
    
        //Play 'Thud' sound
        audio_stop_play_sound(snd_thud, 0, false);
        
        //Create smoke effects
        with (instance_create(bbox_left, bbox_top, obj_smoke)) { sprite_index = spr_smoke_16; motion_set(90, 1); }
        with (instance_create(bbox_left, bbox_bottom, obj_smoke)) { sprite_index = spr_smoke_16; motion_set(270, 1); }
    
        //No gravity
        gravity = 0;
        
        //Is ready
        ready = 1;
        
        //Stop horizontal movement if moving left and go back after a bit.
        if (hspeed < 0) {
        
            //Stop vertical movement
            hspeed = 0;
            
            //Go right
            alarm[3] = 60;
        }
    }
        
    //Otherwise, check if it's long enough to stop it.
    else if (x < parent.x-208) {
    
        //Snap into position
        x = parent.x-208;
        
        //No gravity
        gravity = 0;
        
        //Is ready
        ready = 1;
        
        //Stop horizontal movement if moving down and go up after a bit.
        if (hspeed < 0) {
        
            //Stop horizontal movement
            hspeed = 0;
            
            //Go right
            alarm[3] = 60;
        }
    }
}

//Otherwise, if the skewer touched the wall and it's moving backwards.
else if (ready) {

    //If the skewer is at the right of the start position.
    if (x > xstart) {
    
        //Stop horizontal movement
        hspeed = 0;
        x = xstart;
        
        //Not ready
        ready = 0;
        
        //Go right a bit
        alarm[0] = 120;
    }
}

//Hurt the player if it's overlapping the skewer.
player = collision_rectangle(bbox_left, bbox_top, parent.x-1, bbox_bottom, obj_playerparent, 0, 0);
if (player)
    with (player) event_user(0);

