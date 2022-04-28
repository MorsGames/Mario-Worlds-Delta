/// @description Goomba logic

//If there's no memory of a enemy below.
if (mebelow == noone) {

    //If a enemy is below, remember it.
    if (position_meeting(x, bbox_bottom+8, obj_goomba)) {
    
        //Ride above this pokey
        mebelow = collision_point(x, bbox_bottom+8, obj_goomba, 0, 0);
        
        //Stop moving
        vspeed = 0;
        gravity = 0;
        
        //Manage offset values
        alarm[1] = 5;
    }
    
    //Otherwise, execute default event and deny offset functions.
    else {
    
        //Execute default event
        event_inherited();
            
        //Reset offset values
        offset = 0;
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
                hspeed = -0.5;
            else
                hspeed = 0.5;
        }
    }
}

//If there's not a goomba below and this goomba is not stomped
if (sprite_index != stompsprite) 
&& (sprite_index != spr_goomba_red) {

    if (mebelow == noone)    
        sprite_index = spr_goomba;
    else    
        //Set stacked sprite
        sprite_index = spr_goomba_stack;
}

