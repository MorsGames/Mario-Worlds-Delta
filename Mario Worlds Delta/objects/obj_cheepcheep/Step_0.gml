/// @description Cheep Cheep logic

//Inherit event
event_inherited();

//If not flopping
if (swimming == 1) {

    //If the turning endpoint has not been set
    if (prevswim == 0) {
    
        hspeed = 0.5*sign(xscale);
        prevswim = 1;
        xx = x;
    }

    //Set the sprite
    sprite_index = spr_cheepcheep;
    
    //Animate
    image_speed = 0.125;
    
    //Do not apply gravity
    vspeed = 0;
    gravity = 0;
    
    //If the cheep cheep is moving to the right.
    if (hspeed > 0) {
    
        //Set the facing direction
        xscale = 1;
        
        //Change direction
        if (x > xx+32)
            hspeed = -hspeed;
    }
    
    //Otherwise, if the cheep cheep is moving to the left.
    else if (hspeed < 0) {
    
        //Set the facing direction.
        xscale = -1;
            
        //Change direction.
        if (x < xx-32)    
            hspeed = -hspeed;
    }
}

//Otherwise, if flopping
else if (swimming == 0) {

    //Reset turning endpoint
    prevswim = 0;

    //Set the flopping sprite
    sprite_index = spr_cheepcheep_flop;
    
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

