/// @description Downward skewer logic

//Check for a floor object
var semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_semisolid, 0, 0);

//If the skewer is not on the ground.
if (ready == 0) {

    //When moving down
    if (vspeed > 0) {
    
        //Handle semisolid collisions
        if (semisolid)
        && (semisolid.y > ystart)
        && (bbox_bottom < semisolid.yprevious+5)
            y = semisolid.bbox_top-16;
    }
    
    //Check for floor objects
    if ((collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, semisolid, 0, 0)) && (semisolid.y > ystart)) {
    
        //Play 'Thud' sound
        audio_stop_play_sound(snd_thud, 0, false);
        
        //Create smoke effects
        with (instance_create(bbox_left, bbox_bottom, obj_smoke)) { sprite_index = spr_smoke_16; motion_set(180, 1); }
        with (instance_create(bbox_right, bbox_bottom, obj_smoke)) { sprite_index = spr_smoke_16; motion_set(0, 1); }
    
        //No gravity
        gravity = 0;
        
        //Is ready
        ready = 1;
        
        //Stop vertical movement if moving down and go up after a bit.
        if (vspeed > 0) {
        
            //Stop vertical movement
            vspeed = 0;
            
            //Go up again
            alarm[3] = 60;
        }
    }
    
    //Otherwise, check if it's long enough to stop it.
    else if (y > parent.y+208) {
    
        //Snap into position
        y = parent.y+208;
        
        //No gravity
        gravity = 0;
        
        //Is ready
        ready = 1;
        
        //Stop vertical movement if moving down and go up after a bit.
        if (vspeed > 0) {
        
            //Stop vertical movement
            vspeed = 0;
            
            //Go up again
            alarm[3] = 60;
        }
    }
}

//Otherwise, if the skewer touched the ground and it's ascending.
else if (ready) {

    //If the skewer is above the start position.
    if (y < ystart) {
    
        //Stop vertical movement
        vspeed = 0;
        y = ystart;
        
        //Not ready
        ready = 0;
        
        //Go down
        alarm[0] = 120;
    }
}

//Hurt the player if it's overlapping the skewer.
player = collision_rectangle(bbox_left, parent.y+16, bbox_right, bbox_bottom, obj_playerparent, 1, 0);
if (player)
    with (player) event_user(0);

