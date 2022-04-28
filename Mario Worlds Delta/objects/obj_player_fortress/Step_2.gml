/// @description Handle the sprites of the Castle cutscene player

//Inherit physics 'End Step' event
event_inherited();

//If not on Yoshi
if pseudomount = 0 {
    
    //Make sure the player gets the correct sprite
    if (gravity == 0) {
    
        //If the player is not moving horizontally
        if (hspeed == 0) {
        
            //Animate the falling cape
            if capespr = spr_cape_down {
            
                anim2 += 0.1;
            
                //If at the end of the animation, turn into fallen cape
                if (anim2 = sprite_get_number(capespr))
                    capespr = spr_cape;
                
            }
        
            //Make the cape fall before it is static
            if capespr = spr_cape_walk {
            
                capespr = spr_cape_down;
                anim2 = 0;
                
            }
        
            //If the player is looking up
            if (enterstate == 7) {
        
                //Set stand pose
                sprite_index = player_idle();
                
                //Do not animate
                image_speed = 0;
                image_index = 1;
            }
            
            //Otherwise, set the idle pose
            else {
            
                //Set walking pose
                sprite_index = player_idle();
                
                //Do not animate
                image_speed = 0;
                image_index = 0;            
            }
        }
        
        //Otherwise
        else {
        
            //Set walk pose
            sprite_index = player_walk();
                    
            //Animate
            image_speed = 0.065+abs(hspeed)/7.5;
            
            //Cape
            if capespr != spr_cape_walk {
            
                //Set cape walk sprite
                capespr = spr_cape_walk;
                
            }
            //Cape animation speed
            anim2 = image_index;
            
        }
    }
    else {
    
        //If the player is underwater
        if (swimming == false) {
        
            //Set the jump sprite
            sprite_index = player_spin();
            
            //Animate spin
            image_speed = 0.5;
            
        }
        else {
        
            //Set the swimming sprite
            sprite_index = player_swim();
            
            //Set the frame
            if (vspeed < 0)
                image_speed = 0.15;
            else {
            
                image_speed = 0;
                image_index = 0;
            }
        }
    }
    
    //Set the big mask if the player is not small
    if (global.powerup != cs_pow_small)
        mask_index = spr_mask_player_big;

} else { //If on Yoshi

    //If the player is not moving vertically
    if (vspeed == 0) {
        //Set the sprite
        sprite_index = spr_yoshi;
        
        //Animate
        if (hspeed == 0) {
        
            image_speed = 0;
            image_index = 0;
        }
        else
            image_speed = 0.065+abs(hspeed)/7.5;             
        }
    else {
        //Set the sprite
        sprite_index = spr_yoshi_jump;
        
        //Do not animate
        image_speed = 0;
        if (vspeed < 0)
            image_index = 0;
        else
            image_index = 1;
    }
    //Animate the cape
    if (hspeed == 0)
        anim2 = 0;
    else
        anim2 += 0.065+abs(hspeed)/7.5;   
    //Player y pos
    if (sprite_index == spr_yoshi)
    || (sprite_index == spr_yoshi_fullmouth) {
    
        if (image_index > 0.99)
            m_ypos = 1;
        else
            m_ypos = 0;
    }
    else
        m_ypos = 0;
}

