/// @description Vertical Letterfish logic

//Inherit default event
event_perform_object(obj_physicsparent, ev_step, ev_step_normal);

//If not flopping
if (swimming == 1) {

    //If the turning endpoint has not been set
    if (prevswim == 0) {
    
        vspeed = 0.5*sign(xscale);
        hspeed = 0;
        prevswim = 1;
        yy = y;
    }

    //Set the sprite
    sprite_index = spr_letterfish;
    
    //Animate
    image_speed = 0.125;
    
    //Do not apply gravity
    gravity = 0;
    
    //If the cheep cheep is moving to the right.
    if (vspeed > 0) {
        
        //Change direction
        if (y > yy+32)
            vspeed = -vspeed;
            
        //Otherwise
        else if ((collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_semisolid, 0, 0))
             || (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_slopeparent, 1, 0)))
                vspeed = -vspeed;
    }
    
    //Otherwise, if the cheep cheep is moving to the left.
    else if (vspeed < 0) {
            
        //Change direction.
        if (y < yy-32)
        || (!collision_line(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))    
            vspeed = -vspeed;
    }
    
    //Face towards the player
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
}

//Otherwise, if flopping
else if (swimming == 0) {

    //Reset turning endpoint
    prevswim = 0;

    //Set the flopping sprite
    sprite_index = spr_letterfish_flop;
    
    //Do not animate
    image_speed = 0;
    
    //If no gravity
    if (gravity == 0) {
    
        //Change frame
        image_index = !image_index;
    
        //Choose flop
        flopdir = choose(1, -1);
        
        //Set horizontal speed
        hspeed = 1*sign(flopdir);
        
        //Create splash effect
        with (instance_create(x, y+8, obj_smoke)) {
        
            sprite_index = spr_smoke_16;
            image_speed = 0.15;
            image_index = 2;
            gravity = 0.25;
        }
        
        //Set the vertical speed
        vspeed = -2;
    }
    
    //Set facing direction
    xscale = flopdir;    
}

