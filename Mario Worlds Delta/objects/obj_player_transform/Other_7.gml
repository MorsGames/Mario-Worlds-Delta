/// @description If this object used an animation, destroy via this event

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

//Destroy
instance_destroy();

