/// @description Yoshi Logic

//If Yoshi is not being ridden, perform event from parent.
if (state == yoshistate.idle)
|| (state == yoshistate.runaway) {

    //Inherit event from parent
    event_inherited();
    crouch_position = -1;
    
    //Set up the depth
    if (depth != -2)
        depth = -2;
}

//Otherwise
else if (state == yoshistate.ridden) {

    if (crouch_position == -1) {
    
        crouch_position = 15;
        
    } else if (crouch_position > 0) {
    
        crouch_position --;
        
    }

    //Stop swimming
    swimming = false;

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //Snap into the player
        x = obj_playerparent.x;
        y = obj_playerparent.y+1;
        
        //Force player invisibility
        obj_playerparent.visible = 0;
        
        //Force player holding state
        obj_playerparent.holding = 99;
        
        //If Yoshi does not have anything on the mount and 'Action 2' is pressed
        if (input_check_pressed(input.action1))
        && (licking == 0)
        && (obj_playerparent.gravity_enable == true)
        && (obj_playerparent.control_enable == true) {
        
            //If the mouth is empty
            if (mouthholder == noone) {
            
                //Play 'Lick' sound
                audio_stop_play_sound(snd_lick, 0, false);
                
                //Start licking
                licking = 1;
                alarm[0] = 5;
                
                //Animation
                anim = 0;
                m_anim = 3;
                
                //Lock tongue in position
                if ((input_check(input.up)) || (jumping > 0)) {
                
                    //If the player is not crouched down
                    if (obj_playerparent.crouch == false)
                        locked = 1;
                    else
                        locked = 2;
                }
                else
                    locked = 2;
            }
            
            //Otherwise, spit out the item
            else
                event_user(0);
        }
        
        //Set the depth
        depth = obj_playerparent.depth;
        
        //Manage yoshi state
        if (mouthholder) 
            event_user(2);
        
        //Set mask to big
        obj_playerparent.mask_index = spr_mask_player_big;
        
        //Check if the player is jumping and make yoshi set up his jump pose if so.
        if (obj_playerparent.state == statetype.jump)
            jumping = 1;
        else
            jumping = 0;
    }
    
    //Otherwise, if the player is warping through a pipe.
    else if (instance_exists(obj_player_warp)) {
    
        //Snap into the player
        x = obj_player_warp.x;
        y = obj_player_warp.y;
        
        //Force the player to be invisible
        obj_player_warp.visible = false;
        
        //Depth
        depth = 11;
    }
    
    //Otherwise, if the player is warping through a door.
    else if (instance_exists(obj_player_door)) {
    
        //Snap into the player
        x = obj_player_door.x;
        y = obj_player_door.y;
        
        //Force the player to be invisible
        obj_player_door.visible = false;
        
        //Depth
        depth = -5;
    }
    
    //Otherwise, if the player is warping through a door.
    else if (instance_exists(obj_player_clear)) {
    
        //Snap into the player
        x = obj_player_clear.x;
        y = obj_player_clear.y;
        
        //Force the player to be invisible
        obj_player_clear.visible = false;
        
        //Depth
        depth = -5;
        
        //Animate the cape
        if (obj_player_clear.hspeed == 0)
            anim2 = 0;
        else
            anim2 += 0.065+abs(obj_player_clear.hspeed)/7.5;   
    }
}

//Force end flying sound if not holding anything on the mouth
if (audio_is_playing(snd_fly))
&& (flying == 1)
&& (mouthholder == noone)
    audio_stop_sound(snd_fly);

///Yoshi Animation

//If Yoshi is idle
if (state == yoshistate.idle) {

    //Set the sprite
    sprite_index = spr_yoshi_idle;

    //Do not animate
    image_speed = 0;    
    
    //Set up the sprite
    if (mouthholder != noone)
        image_index = 2;
}

//Otherwise, if Yoshi is running away
else if (state == yoshistate.runaway) {

    //Animate
    image_speed = 0.3;

    //If Yoshi's mouth is full
    if (mouthholder != noone)
        sprite_index = spr_yoshi_fullmouth;
    else
        sprite_index = spr_yoshi_scared;
}

//Otherwise
else {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If Yoshi is licking something
        if (licking == true) {
        
            //If the 'Up' key is being held or Yoshi is jumping.
            if (locked == 1) {
            
                //Set the sprite
                sprite_index = spr_yoshi_lick;
                
                //Do not animate
                image_speed = 0;
                
                //Set the frame
                if (obj_playerparent.vspeed != 0) {
                
                    if (obj_playerparent.vspeed < 0)
                        image_index = 1;
                    else if (obj_playerparent.vspeed > 0)
                        image_index = 2;
                }
                else
                    image_index = 0;
            }
            
            //Otherwise
            else {
            
                //Set the sprite
                sprite_index = spr_yoshi_lick_alt;
                
                //Do not animate
                image_speed = 0;
                image_index = anim;
            }
        }
        
        //Otherwise, if Yoshi is not licking
        else if (licking == false) {
        
            //If the player is crouched down or it is sliding down a slope
            if (obj_playerparent.crouch == true)
            || (obj_playerparent.sliding == true)
            || (crouch_position > 0) {
            
                //If Yoshi is holding something on his mouth
                if (mouthholder != noone) {
                
                    //Set the sprite
                    sprite_index = spr_yoshi_idle;
                    
                    //Do not animate
                    image_speed = 0;
                    image_index = 2;
                }
                
                //Otherwise
                else if (mouthholder == noone) {
                
                    //Set the sprite
                    sprite_index = spr_yoshi_idle;
                    
                    //Do not animate
                    image_speed = 0;
                    image_index = 0;
                }
            }
            
            //Otherwise
            else {
            
                //If the player is idle
                if (obj_playerparent.state == statetype.idle) {
                    
                    //If Yoshi is holding something on his mouth
                    if (mouthholder != noone) {
                    
                        //Set the sprite
                        sprite_index = spr_yoshi_fullmouth;
                        
                        //Do not animate
                        image_speed = 0;
                        image_index = 0;
                    }
                    
                    //Otherwise, if Yoshi is not holding anything on his mouth
                    else if (mouthholder == noone) {
                    
                        //Set the sprite
                        sprite_index = spr_yoshi;
                        
                        //Do not animate
                        image_speed = 0;
                        image_index = 0;
                    }
                }
                
                //Otherwise, if the player is walking
                else if (obj_playerparent.state == statetype.walk) {
                
                    //If Yoshi is holding something on his mouth
                    if (mouthholder != noone) {
                    
                        //Set the sprite
                        sprite_index = spr_yoshi_fullmouth;
                        
                        //Set the animation speed
                        image_speed = (0.065*(obj_playerparent.inice*4))+abs(obj_playerparent.hspeed)/7.5;
                    }
                    
                    //Otherwise, if Yoshi is not holding anything on his mouth
                    else if (mouthholder == noone) {
                                    
                        //Set the sprite
                        sprite_index = spr_yoshi;
                    
                        //Set the animation speed
                        image_speed = (0.065*(obj_playerparent.inice*4))+abs(obj_playerparent.hspeed)/7.5;
                    }
                }
                
                //Otherwise, if the player is jumping
                else if (obj_playerparent.state == statetype.jump) {
                
                    //If Yoshi is holding something on his mouth
                    if (mouthholder != noone) {
                    
                        //Set the sprite
                        sprite_index = spr_yoshi_fullmouth_jump;
                        
                        //Do not animate
                        image_speed = 0;
                        
                        //Set the frame
                        if (obj_playerparent.vspeed < 0)
                            image_index = 0;
                        else
                            image_index = 1;
                    }
                    
                    //Otherwise, if Yoshi is not holding anything on his mouth
                    else if (mouthholder == noone) {
                    
                        //Set the sprite
                        sprite_index = spr_yoshi_jump;
                        
                        //Do not animate
                        image_speed = 0;
                        
                        //Set the frame
                        if (obj_playerparent.vspeed < 0)
                            image_index = 0;
                        else
                            image_index = 1;                                            
                    }
                }
            }
        }
    }
    
    //Otherwise, if the player is warping through a pipe
    else if (instance_exists(obj_player_warp)) {
    
        //If the player is not moving vertically
        if (obj_player_warp.vspeed == 0) {
    
            //If Yoshi is holding something on his mouth.
            if (mouthholder != noone) {
            
                //Set the sprite
                sprite_index = spr_yoshi_fullmouth;
                
                //Animate
                image_speed = 0.2;
            }
            
            //Otherwise, if Yoshi is not holding anything on his mouth.
            else if (mouthholder == noone) {
            
                //Set the sprite
                sprite_index = spr_yoshi;
                
                //Animate
                image_speed = 0.2;               
            }
            
            //Set the depth
            depth = 10;
        }
        else {
        
            //If Yoshi is holding something on his mouth.
            if (mouthholder != noone) {
            
                //Set the sprite
                sprite_index = spr_yoshi_fullmouth_warp;
                
                //Do not animate
                image_speed = 0;
                image_index = 0;
            }
            
            //Otherwise, if Yoshi is not holding anything on his mouth.
            else if (mouthholder == noone) {
            
                //Set the sprite
                sprite_index = spr_yoshi_warp;
                
                //Do not animate
                image_speed = 0;
                image_index = 0;
            }
        }
    }
    
    //Otherwise, if the player has cleared the level
    else if (instance_exists(obj_player_clear)) {
    
        //If the player is not moving vertically
        if (obj_player_clear.vspeed == 0) {
    
            //If Yoshi is holding something on his mouth.
            if (mouthholder != noone) {
            
                //Set the sprite
                sprite_index = spr_yoshi_fullmouth;
                
                //Animate
                if (obj_player_clear.hspeed == 0) {
                
                    image_speed = 0;
                    image_index = 0;
                }
                else
                    image_speed = 0.065+abs(obj_player_clear.hspeed)/7.5;
            }
            
            //Otherwise, if Yoshi is not holding anything on his mouth.
            else if (mouthholder == noone) {
            
                //Set the sprite
                sprite_index = spr_yoshi;
                
                //Animate
                if (obj_player_clear.hspeed == 0) {
                
                    image_speed = 0;
                    image_index = 0;
                }
                else
                    image_speed = 0.065+abs(obj_player_clear.hspeed)/7.5;             
            }
        }
        else {
        
            //If Yoshi is holding something on his mouth.
            if (mouthholder != noone) {
            
                //Set the sprite
                sprite_index = spr_yoshi_fullmouth_jump;
                
                //Do not animate
                image_speed = 0;
                if (vspeed < 0)
                    image_index = 0;
                else
                    image_index = 1;
            }
            
            //Otherwise, if Yoshi is not holding anything on his mouth.
            else if (mouthholder == noone) {
            
                //Set the sprite
                sprite_index = spr_yoshi_jump;
                
                //Do not animate
                image_speed = 0;
                if (vspeed < 0)
                    image_index = 0;
                else
                    image_index = 1;
            }
        }            
    }
    
    //Set up the y position for Mario
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

