/// @description Spit out an item

//If Yoshi is holding anything on his mouth
if (mouthholder != noone) {
    
    //Play 'Spit' sound
    audio_stop_play_sound(snd_spit, 0, false);
    
    //Spit out the item
    if (obj_playerparent.crouch == true) 
    || (obj_playerparent.sliding == true) {
    
        //If the item held on yoshi's mouth is a shell
        if (mouthholder == obj_shell) {
        
            //If this is a red yoshi
            if (colour == 1)
            || (mouthsprite == spr_shell_red)
            || (mouthsprite == spr_shell_kamikaze)
                mouthholder = obj_yoshi_fire;
        }
                
        //Lock it
        locked = 2;
        
        //If yoshi is holding a red shell
        if (mouthholder == obj_yoshi_fire) {
    
            //Play 'Flames' sound
            audio_stop_play_sound(snd_flames, 0, false);
            
            //Make yoshi fire
            instance_create(x+(10*obj_playerparent.xscale), y-12, obj_yoshi_fire);
            with (instance_create(x+(10*obj_playerparent.xscale), y-12, obj_yoshi_fire)) 
                vspeed = 1;
            with (instance_create(x+(10*obj_playerparent.xscale), y-12, obj_yoshi_fire)) 
                vspeed = -1;           
        }
        
        //If yoshi is holding a fire melon
        else if (mouthholder == obj_watermelon_fire) {
        
            //Play 'Flames' sound
            audio_stop_play_sound(snd_beam, 0, false);
            
            //If there's ammo left
            if (ammo > 0) {
            
                //Decrement ammo
                ammo--;
                
                //Make yoshi fire
                instance_create(x+(10*obj_playerparent.xscale), y-12, obj_yoshi_fire);
                with (instance_create(x+(10*obj_playerparent.xscale), y-12, obj_yoshi_fire)) 
                    vspeed = 1;
                with (instance_create(x+(10*obj_playerparent.xscale), y-12, obj_yoshi_fire)) 
                    vspeed = -1;
            }              
        }
        
        //If yoshi is holding a ice melon
        else if (mouthholder == obj_watermelon_ice) {
        
            //Play 'Flames' sound
            audio_stop_play_sound(snd_beam, 0, false);
            
            //If there's ammo left
            if (ammo > 0) {
            
                //Decrement ammo
                ammo--;
                
                //Make yoshi fire
                instance_create(x+(10*obj_playerparent.xscale), y-12, obj_yoshi_ice);
                with (instance_create(x+(10*obj_playerparent.xscale), y-12, obj_yoshi_ice)) 
                    vspeed = 1;
                with (instance_create(x+(10*obj_playerparent.xscale), y-12, obj_yoshi_ice)) 
                    vspeed = -1;
            }              
        }
        
        //If yoshi is holding a bomb melon
        else if (mouthholder == obj_watermelon_bomb) {
            
            //If there's ammo left
            if (ammo > 0) {
            
                //Decrement ammo
                ammo--;
                
                //Make yoshi spit a bomb
                with (instance_create(x+(10*obj_playerparent.xscale), y-12, obj_yoshi_bomb))
                    hspeed = 3*obj_playerparent.xscale;
            }              
        }
        
        //Otherwise
        else {
        
            //If the held item is a kicked shell, turn into a holdable shell
            if (mouthholder == obj_shell_kicked) then mouthholder = obj_shell;
        
            //Create up an item
            with (instance_create(x+(10*obj_playerparent.xscale), y-12, mouthholder)) {
            
                //Use the correct sprite
                sprite_index = other.mouthsprite;
                
                //Set the horizontal speed
                hspeed = 0.5*obj_playerparent.xscale;
                
                //Set swimming state
                if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
                    swimming = 1;
            }
        }
    }
    else {
    
        //If the item held on yoshi's mouth is a shell
        if (mouthholder == obj_shell) {
        
            //If this is a red yoshi or the shell is a red one
            if (colour == 1)
            || (mouthsprite == spr_shell_red)
            || (mouthsprite == spr_shell_kamikaze)
                mouthholder = obj_yoshi_fire;
            else
                mouthholder = obj_shell_kicked;
        }
        
        //Lock it
        locked = 1;
        
        //If yoshi is holding a red shell
        if (mouthholder == obj_yoshi_fire) {
        
            //Play 'Flames' sound
            audio_stop_play_sound(snd_flames, 0, false);
            
            //Make yoshi fire
            instance_create(x+(10*obj_playerparent.xscale), y-16, obj_yoshi_fire);
            with (instance_create(x+(10*obj_playerparent.xscale), y-16, obj_yoshi_fire)) 
                vspeed = 1;
            with (instance_create(x+(10*obj_playerparent.xscale), y-16, obj_yoshi_fire)) 
                vspeed = -1;         
        
        }
        
        //If yoshi is holding a fire melon
        else if (mouthholder == obj_watermelon_fire) {
        
            //Play 'Flames' sound
            audio_stop_play_sound(snd_flames, 0, false);
            
            //If there's ammo left
            if (ammo > 0) {
            
                //Decrement ammo
                ammo--;
                
                //Make yoshi fire
                instance_create(x+(10*obj_playerparent.xscale), y-16, obj_yoshi_fire);
                with (instance_create(x+(10*obj_playerparent.xscale), y-16, obj_yoshi_fire)) 
                    vspeed = 1;
                with (instance_create(x+(10*obj_playerparent.xscale), y-16, obj_yoshi_fire)) 
                    vspeed = -1;
            }              
        }
        
        //If yoshi is holding a fire melon
        else if (mouthholder == obj_watermelon_ice) {
        
            //Play 'Flames' sound
            audio_stop_play_sound(snd_beam, 0, false);
            
            //If there's ammo left
            if (ammo > 0) {
            
                //Decrement ammo
                ammo--;
                
                //Make yoshi fire
                instance_create(x+(10*obj_playerparent.xscale), y-16, obj_yoshi_ice);
                with (instance_create(x+(10*obj_playerparent.xscale), y-16, obj_yoshi_ice)) 
                    vspeed = 1;
                with (instance_create(x+(10*obj_playerparent.xscale), y-16, obj_yoshi_ice)) 
                    vspeed = -1;
            }              
        }
        
        //If yoshi is holding a bomb melon
        else if (mouthholder == obj_watermelon_bomb) {
            
            //If there's ammo left
            if (ammo > 0) {
            
                //Decrement ammo
                ammo--;
                
                //Make yoshi spit a bomb
                with (instance_create(x+(10*obj_playerparent.xscale), y-16, obj_yoshi_bomb))
                    hspeed = 3*obj_playerparent.xscale;
            }              
        }
        
        //Otherwise
        else {
        
            //Create up an item
            with (instance_create(x+(10*obj_playerparent.xscale), y-16, mouthholder)) {
            
                //Use the correct sprite
                sprite_index = other.mouthsprite;
                
                //Set up the correct direction
                dir = obj_playerparent.xscale;
                
                //If the eaten item is a throwable brick.
                if (sprite_index == spr_brick_throw_th) {
                    
                    //Set the horizontal speed.
                    hspeed = 3*obj_playerparent.xscale;
                    
                    //Set the animation speed
                    image_speed = 0.5;
                    
                    //Get thrown
                    ready = 1;
                    
                    //If the object is in contact with a solid.
                    if (place_meeting(x, y, obj_solid))
                        event_user(0);
                }
                
                //If the eaten item is a shell
                else if (sprite_index == spr_shell) || (sprite_index == spr_shell_blue) || (sprite_index == spr_shell_yellow) {
                
                    //Set the horizontal speed
                    prevhspeed = (2.7+abs(obj_playerparent.hspeed/4))*obj_playerparent.xscale;
                    hspeed = (2.7+abs(obj_playerparent.hspeed/4))*obj_playerparent.xscale;
                    
                    //Get thrown
                    ready = 1;
                }
                
                //Otherwise
                else {
                
                    //If the eaten item is a POW block.
                    if (sprite_index = spr_powblock_blue) 
                    && (!input_check(input.down))      
                        ready = 1;
        
                    //If the eaten item is not overlapping a solid.
                    if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_solid,0,0)) {
                    
                        //Set the motion when swimming.
                        if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim,0,0)) {
                        
                            if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_slopeparent,1,0))
                                hspeed = obj_playerparent.hspeed+0.75*obj_playerparent.xscale;
                            else
                                hspeed = 1*obj_playerparent.xscale;                
                        }
                        
                        //Otherwise, set the motion when NOT swimming.
                        else {
                        
                            if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_slopeparent,1,0))
                                hspeed = obj_playerparent.hspeed+1.5*obj_playerparent.xscale;
                            else
                                hspeed = 2*obj_playerparent.xscale;                
                        }
                    }
                    
                    //Make the item get not stuck on a solid.
                    else
                        inwall = true;
                }
                
                //Set swimming state
                if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
                    swimming = 1;
            }
        }
    }
    
    //If there's not ammo left
    if (ammo == 0) {
            
        //Reset mouth item
        mouthholder = noone;
        
        //Reset item sprite
        mouthsprite = noone;
    }
    
    //Licking
    licking = 1;
    
    //Stop licking
    alarm[2] = 5;
    
    //Lick animation
    anim = 0;
}

