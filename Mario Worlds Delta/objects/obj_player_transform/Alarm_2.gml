/// @description Set the new powerup frame

//Set the powerup set in 'newpowerup
global.powerup = newpowerup;

//Obtain sprite from player
sprite_index = obj_playerparent.sprite_index;

//If the animation does not longer loop, exit
if (loop == 0) {

    //If the screen did froze
    if (global.screenfreeze == true) {

        //Delete screenshot
        background_delete(back);
        
        //Activate instances
        instance_activate_all();
        
        //Make cape visible
        with (obj_cape) image_alpha = 1;
        
        //Make player on yoshi visible
        with (obj_yoshi) m_vis = 1;
        
        //With the player
        with (obj_playerparent) {
        
            //Disable gravity
            gravity_enable = true;
            
            //Resume movement
            event_user(14);
            
            //Make invisible
            visible = true;
            
            //Reset alarm 0
            if (alarm[0] > -1)
                alarm[0] = 90;
        }
    }
    
    //Otherwise
    else {
    
        //Reset alarm 0
        if (alarm[0] > -1)
            alarm[0] = 90;
    }
    
    //Destroy
    instance_destroy();
}
else {

    //Decrement loop
    loop--;
    
    //Create a poof of smoke
    if (loop == 2) 
    && (global.powerup == cs_pow_cape) {
    
        with (instance_create(x, y, obj_smoke)) {
        
            sprite_index = spr_smoke_32;
            depth = -8;
        }
    }
}

//Change sprite again
alarm[1] = 6;

