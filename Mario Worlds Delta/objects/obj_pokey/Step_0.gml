/// @description Pokey logic

//If there's no memory of a enemy below.
if (mebelow == noone) {

    //If a enemy is below, remember it.
    if (position_meeting(x, bbox_bottom+8, obj_pokey)) {
    
        //Ride above this pokey
        mebelow = collision_point(x, bbox_bottom+8, obj_pokey, 0, 0);
        
        //Stop moving
        vspeed = 0;
        gravity = 0;
        
        //Manage offset values
        alarm[0] = 10;
    }
    
    //Otherwise, execute default event and deny offset functions.
    else {
    
        //Execute default event
        event_inherited();
            
        //Reset offset values
        offset = 0;
        offsetnext = 0;
        
        //Deny offset values
        alarm[0] = -1;
    }
}

//If there's memory of a enemy below.
else {

    //Activate the enemy below.
    instance_activate_object(mebelow);
    
    //If the enemy exits, snap it.
    if (instance_exists(mebelow)) {
    
        //Hereby horizontal scale
        xscale = mebelow.xscale;
        
        //Snap above it
        x = mebelow.x;
        y = mebelow.y-16;
    }
    
    //Otherwise, lose memory of it and move towards the player.
    else {
    
        //Lose memory of it.
        mebelow = noone;
        
        //Walk towards the player.
        if (hspeed != 0)
            exit;
        else {
        
            if (!instance_exists(obj_playerparent)) 
            || (obj_playerparent.x < x)
                hspeed = -0.25;
            else
                hspeed = 0.25;
        }
    }
}

//Set the sprite
if (position_meeting(x, y-8, obj_pokey)) {
    
    //Set body image
    image_index = 1;    
    
    //Allow stomp and fireball kill
    if (sprite_index == spr_pokey_snow)
        stomp = 1;
}
else {

    //Set head image
    image_index = 0;    
    
    //Allow stomp
    if (sprite_index == spr_pokey_snow)
        stomp = 4;
    else    
        stomp = 1;
}

