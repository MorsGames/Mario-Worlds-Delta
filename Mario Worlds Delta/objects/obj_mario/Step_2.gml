/// @description Manage Mario's animation

//Check if Mario is on a slippery surface
if (collision_rectangle(bbox_left, bbox_bottom-1, bbox_right, bbox_bottom, obj_iceparent, 1, 0))
    inice = true;
else
    inice = false;
    
//If the player is stunned
if (stun > 0) {

    //Set up the spin sprite
    sprite_index = player_spin();
    
    //Do not animate
    image_speed = 0;
    image_index = 1;
    
    //Stop crouch
    crouch = false;
    
    //Set cape state
    with (obj_cape) {
    
        //Set zero state
        state = noone;
        
        //Set sprite
        sprite_index = spr_cape_climb;
        
        //Set frame
        image_speed = 0;
        image_index = 1;
    
        //Set the depth first
        depth = 10;                             
    }
    
    //Set up the mask
    if (global.powerup > cs_pow_small)
        mask_index = spr_mask_player_big;
    else
        mask_index = spr_mask_player;
}

//Otherwise
else {
        
    //If the player cleared a stage
    if (cleared == 2) {
    
        //Set up the clear sprite
        sprite_index = player_clear();
        
        //Do not animate
        image_speed = 0;
        image_index = 0;
        
        //Set up the cape state
        if (state == statetype.idle) {
        
            with (obj_cape) {
            
                //Set cape position and state
                state = capestate.cape_idle;
                
                //If Mario is not riding a Yoshi
                if (global.mount == 0) {
                
                    yy = 1;
                    depth = other.depth+1;
                }
                    
                //Otherwise, if Mario is riding a yoshi
                else {
                
                    yy = 3;
                    if (other.depth == 10)
                        depth = 10;
                    else
                        depth = -6;
                }
            }
        }
        else if (state == statetype.walk) {
        
            with (obj_cape) {
            
                state = capestate.cape_walk;
                depth = other.depth+1;
                yy = 1
            }
        }
        else if (state == statetype.jump) {
        
            //With the cape
            with (obj_cape) {
            
                //Set position
                yy = 1;
            
                //If moving up
                if (other.vspeed < 0) {
                
                    //Set state
                    state = capestate.cape_jump_up;
                    
                    //Set depth
                    if (global.mount == 1) {
                    
                        if (other.depth == 10)
                            depth = 10;
                        else
                            depth = -6;
                    }
                    else
                        depth = other.depth+1;
                }
                else {
                
                    state = capestate.cape_jump_down;
                    depth = other.depth+1;
                }
            }
        }
    }
    
    //Otherwise
    else {
    
        //If Mario is crouched down
        if (crouch) {
        
            //Set up the crouch sprite
            sprite_index = player_crouch();
            
            //Do not animate
            image_speed = 0;
            
            //If Mario is not holding anything
            if (holding == 0)
                image_index = 0;
            
            //Otherwise, if Mario is holding something
            else {
            
                //You can set up multiple holding states if you want
                if (holding == 1)
                    image_index = 1;
            }
            
            //Cancel turning
            turnnow = 0;
            
            //Set up the mask
            mask_index = spr_mask_player;
        
            //Set up the cape state
            if (state == statetype.idle) {
            
                with (obj_cape) {
                
                    //Set cape position and state
                    state = capestate.cape_idle;
                    
                    //If Mario is not riding a Yoshi
                    if (global.mount == 0) {
                    
                        yy = 1;
                        depth = other.depth+1;
                    }
                        
                    //Otherwise, if Mario is riding a yoshi
                    else {
                    
                        yy = 3;
                        if (other.depth == 10)
                            depth = 10;
                        else
                            depth = -6;
                    }
                }
            }
            else if (state == statetype.walk) {
            
                with (obj_cape) {
                
                    state = capestate.cape_walk;
                    depth = other.depth+1;
                    yy = 1
                }
            }
            else if (state == statetype.jump) {
            
                //With the cape
                with (obj_cape) {
                
                    //Set position
                    yy = 1;
                
                    //If moving up
                    if (other.vspeed < 0) {
                    
                        //Set state
                        state = capestate.cape_jump_up;
                        
                        //Set depth
                        if (global.mount == 1) {
                        
                            if (other.depth == 10)
                                depth = 10;
                            else
                                depth = -6;
                        }
                        else
                            depth = other.depth+1;
                    }
                    else {
                    
                        state = capestate.cape_jump_down;
                        depth = other.depth+1;
                    }
                }
            }
        }
        
        //Otherwise, if Mario is not longer crouched down
        else if (crouch == false) {
        
            //If Mario is not holding anything
            if (holding == 0) 
            || (holding == 99) {
            
                //If Mario is not sliding down a slope
                if (sliding == false) {
                
                    //If Mario is not kicking anything
                    if (kicking == false) {
                    
                        //If Mario is not moving
                        if (state == statetype.idle) {
                        
                            //Set cape state
                            with (obj_cape) {
                            
                                //Set cape position and state
                                state = capestate.cape_idle;
                                yy = 1;
                                
                                //If Mario is not riding a Yoshi
                                if (global.mount == 0)
                                    depth = other.depth+1;
                                    
                                //Otherwise, if Mario is riding a yoshi
                                else {
                                
                                    //Set up depth
                                    if (other.depth == 10)
                                        depth = 10;
                                    else
                                        depth = -6;
                                }
                            }
                        
                            //If Mario is firing up a projectile
                            if (firing > 0)
                            && ((global.powerup == cs_pow_fire) || (global.powerup == cs_pow_ice)) {
                            
                                //Set the sprite
                                sprite_index = player_shoot();
                                
                                //Do not animate
                                image_speed = 0;
                                image_index = 0;
                                
                                //Decrement firing
                                firing--;
                            }
                            
                            //Otherwise, if Mario is not firing up a projectile
                            else {
                            
                                //Set the sprite
                                sprite_index = player_idle();
                                
                                //Do not animate
                                image_speed = 0;
                                
                                //But set the appropiate frame
                                if (input_check(input.up))
                                    image_index = 1;
                                else
                                    image_index = 0;
                            }
                        }
                        
                        //Otherwise, if Mario is walking
                        else if (state == statetype.walk) {
                        
                            //Set cape state
                            with (obj_cape) {
                            
                                state = capestate.cape_walk;
                                depth = other.depth+1;
                                yy = 0;
                            }
                        
                            //Before setting the walk sprite, check if Mario is moving in the opposite direction
                            if (((hspeed > 0.1) && (input_check(input.left)) && (xscale == -1)) || ((hspeed < -0.1) && (input_check(input.right)) && (xscale == 1)))
                            && (swimming == false)
                            && (!inice) {
                            
                                //Set the sprite
                                sprite_index = player_skid();
                                
                                //Do not animate
                                image_speed = 0;
                                image_index = 0;             
                            }
                            
                            //Otherwise
                            else {
                            
                                prejump_scuttle = abs(hspeed) * 3;
                                
                                //Animate
                                image_speed = (0.065*(inice*4))+abs(hspeed)/7.5;
                                
                                //Set up the sprite
                                if (run)
                                    sprite_index = player_run();
                                else
                                    sprite_index = player_walk();
                            }
                        }
                        
                        //Otherwise, if Mario is jumping
                        else if (state == statetype.jump) {
                        
                            //If Mario is not swimming
                            if (swimming == false) {
                            
                                //If Mario is doing a spinjump
                                if (jumpstyle) {
                                
                                    //Set cape state
                                    with (obj_cape) {
                                    
                                        //If moving up
                                        if (other.vspeed < 0) {
                                        
                                            if (global.mount == 1)
                                                state = capestate.cape_jump_up;
                                            else
                                                state = capestate.cape_spin_up;
                                        }
                                        else {
                                        
                                            if (global.mount == 1)
                                                state = capestate.cape_jump_down;
                                            else
                                                state = capestate.cape_spin_down;
                                        }
                                    
                                        //Set the depth first
                                        if (image_index > 2.99) {
                                        
                                            if (other.depth == 10)
                                                depth = 10;
                                            else
                                                depth = -6;
                                        }
                                        else
                                            depth = other.depth+1;                                
                                    }
                                
                                    //Set the sprite
                                    sprite_index = player_spin();
                                    
                                    //Animate
                                    image_speed = 0.5;
                                }
                                
                                //Otherwise, if Mario is not doing a spinjump
                                else if (jumpstyle == false) {
                                
                                    //With the cape
                                    with (obj_cape) {
                                            
                                        //If moving up
                                        if (other.vspeed < 0) {
                                        
                                            //Set position
                                            yy = 1;
                                        
                                            //Set depth
                                            if (global.mount == 1) {
                                            
                                                if (other.depth == 10)
                                                    depth = 10;
                                                else
                                                    depth = -6;
                                            }
                                            else
                                                depth = other.depth+1;
                                            
                                            //Set state
                                            if (other.flying > 0)
                                                state = capestate.cape_walk;
                                            else
                                                state = capestate.cape_jump_up;
                                        }
                                        else {
                                        
                                            //Set position
                                            yy = -3;
                                        
                                            state = capestate.cape_jump_down;
                                            depth = other.depth+1;
                                        }                                    
                                    }
                                    
                                    //If Mario is firing a projectile
                                    if (firing > 0) {
                                    
                                        //Set the sprite
                                        sprite_index = player_swim();
                                        
                                        //Do not animate
                                        image_speed = 0;
                                        
                                        //Decrement firing
                                        firing--;
                                        
                                        //Set up the frame
                                        if (firing < 3)
                                            image_index = 2;
                                        else if (firing >= 3) && (firing < 6)
                                            image_index = 1;
                                        else if (firing >= 6) && (firing < 10)
                                            image_index = 0;
                                    }
                                    
                                    //Otherwise, if Mario is not firing a projectile
                                    else {
                                
                                        //If Mario is running
                                        if (run) {
                                        
                                            if (prejump_scuttle <= 0) {
                                        
                                                //Set the sprite
                                                sprite_index = player_runjump();
                                                
                                                //Do not animate
                                                image_speed = 0;
                                                image_index = 0;
                                                
                                            } else {
                                            
                                                //Set the sprite
                                                sprite_index = player_walk();
                                            
                                                //Set the image speed
                                                if (abs(hspeed) / 8 > .1)
                                                                                    
                                                    image_speed = abs(hspeed) / 8;
                                                                                        
                                                else image_speed = .1;
                                                    
                                                //Subtract the scuttle
                                                prejump_scuttle --;
                                                
                                                //Set the scuttle to 0
                                                if (prejump_scuttle < 0)
                                                
                                                    prejump_scuttle = 0;
                                                
                                            }  
                                        }
                                        
                                        //Otherwise, if Mario is not running
                                        else if (run == false) {
                                        
                                            //If the player has depleated all of their scuttle...
                                            if (prejump_scuttle <= 0) {
                                        
                                                //Set the sprite
                                                sprite_index = player_jump();
                                                
                                                //Do not animate
                                                image_speed = 0;
                                                
                                                //But set the appropiate frame
                                                if (vspeed < 0)
                                                    image_index = 0;
                                                else
                                                    image_index = 1;
                                                
                                            } else {
                                            
                                                //Set the sprite
                                                sprite_index = player_walk();
                                            
                                                //Set the image speed
                                                if (abs(hspeed) / 8 > .1)
                                                                                    
                                                    image_speed = abs(hspeed) / 8;
                                                                                        
                                                else image_speed = .1;
                                                    
                                                //Subtract the scuttle
                                                prejump_scuttle --;
                                                
                                                //Set the scuttle to 0
                                                if (prejump_scuttle < 0)
                                                
                                                    prejump_scuttle = 0;
                                                
                                            }
                                        }
                                    }
                                }
                            }
                            
                            //Otherwise, if Mario is swimming
                            else if (swimming) {
                            
                                //With the cape
                                with (obj_cape) {
                                
                                    //Set depth
                                    depth = other.depth+1;
                                    yy = 0;
                                
                                    //If moving up
                                    if (other.vspeed < 0)
                                        state = capestate.cape_jump_up;
                                    else
                                        state = capestate.cape_jump_down;                                    
                                }
                                
                                //Set the sprite
                                sprite_index = player_swim();
                                
                                //If Mario is firing a projectile
                                if (firing > 0) {
                                    
                                    //Do not animate
                                    image_speed = 0;
                                    
                                    //Decrement firing
                                    firing--;
                                    
                                    //Set up the frame
                                    if (firing < 3)
                                        image_index = 2;
                                    else if (firing >= 3) && (firing < 6)
                                        image_index = 1;
                                    else if (firing >= 6) && (firing < 10)
                                        image_index = 0;
                                }
                                
                                //Otherwise
                                else {
                                    
                                    //If moving up, animate
                                    if (vspeed < 0)
                                        image_speed = 0.15;
                                        
                                    //Otherwise, do not animate
                                    else {
                                    
                                        image_speed = 0;
                                        image_index = 0;
                                    }
                                }
                            }
                        }
                        
                        //Otherwise, if Mario is climbing
                        else if (state == statetype.climb) {
                        
                            //Set the cape sprite
                            with (obj_cape) {
                            
                                //Set depth
                                depth = -6;
                                yy = 0;
                                
                                //Set cape
                                state = capestate.cape_climb;
                            }
                        
                            //Set the sprite
                            sprite_index = player_climb();
                            
                            //If moving
                            if (speed > 0)
                                image_speed = 0.15;
                            
                            //Otherwise, if not moving
                            else {
                            
                                image_speed = 0;
                                image_index = 0;
                            }
                        }
                    }
                    
                    //Otherwise, if the player is kicking something
                    else if (kicking) {
                    
                        //Set the sprite
                        sprite_index = player_kick();
                        
                        //Do not animate
                        image_speed = 0;
                        image_index = 0;
                        
                        //Set up the cape state
                        if (state == statetype.idle) {
                        
                            with (obj_cape) {
                            
                                state = capestate.cape_idle;
                                depth = other.depth+1;
                                yy = 0;
                            }
                        }
                        else if (state == statetype.walk) {
                        
                            with (obj_cape) {
                            
                                state = capestate.cape_walk;
                                depth = other.depth+1;
                                yy = 0;
                            }
                        }
                        else if (state == statetype.jump) {
                        
                            //With the cape
                            with (obj_cape) {
                            
                                //Set depth
                                depth = other.depth+1;
                                yy = 0;
                            
                                //If moving up
                                if (other.vspeed < 0)
                                    state = capestate.cape_jump_up;
                                else
                                    state = capestate.cape_jump_down;
                            }
                        }
                    }
                }
                
                //Otherwise, if the player is sliding down a slope
                else if (sliding) {
                
                    //Set the sprite
                    sprite_index = player_slide();
                    
                    //Do not animate
                    image_speed = 0;
                    image_index = 0;
                            
                    //Set up the cape state
                    if (state == statetype.idle) {
                    
                        with (obj_cape) {
                        
                            state = capestate.cape_idle;
                            depth = other.depth+1;
                            yy = 2;
                        }
                    }
                    else if (state == statetype.walk) {
                    
                        with (obj_cape) {
                        
                            state = capestate.cape_walk;
                            depth = other.depth+1;
                            yy = 2;
                        }
                    }
                    else if (state == statetype.jump) {
                    
                        //With the cape
                        with (obj_cape) {
                        
                            //Set depth
                            depth = other.depth+1;
                            yy = 2;
                        
                            //If moving up
                            if (other.vspeed < 0)
                                state = capestate.cape_jump_up;
                            else
                                state = capestate.cape_jump_down;
                        }
                    }
                }
            }
            
            //Otherwise, if the player is holding something
            else if (holding == 1) {
            
                //If Mario is turning around
                if (turnnow) {
                
                    //Set the sprite
                    sprite_index = player_spin();
                    
                    //Do not animate
                    image_speed = 0;
                    image_index = 1;
                }
            
                //Otherwise, if Mario is not turning around
                else {
                
                    //If Mario is not moving
                    if (state == statetype.idle) {
                    
                        //Set cape state
                        with (obj_cape) {
                        
                            state = capestate.cape_idle;
                            depth = other.depth+1;
                            yy = 0;
                        }
                    
                        //Set the sprite
                        sprite_index = player_hold();
                        
                        //Do not animate
                        image_speed = 0;
                        
                        //But set the appropiate frame
                        if (input_check(input.up))
                            image_index = 1;
                        else
                            image_index = 0;
                    }
                    
                    //Otherwise, if Mario is walking
                    else if (state == statetype.walk) {
                    
                        //Set cape state
                        with (obj_cape) {
                        
                            state = capestate.cape_walk;
                            depth = other.depth+1;
                            yy = 0;
                        }
                    
                        //Set the sprite
                        sprite_index = player_hold2();
                                    
                        //Animate
                        image_speed = (0.065*(inice*4))+abs(hspeed)/7.5;                       
                    }
                    
                    //Otherwise, if Mario is jumping
                    else if (state == statetype.jump) {
                    
                        //If Mario is not swimming
                        if (swimming == false) {
                        
                            //If Mario is doing a spinjump
                            if (jumpstyle) {
                                                                        
                                //Set cape state
                                with (obj_cape) {
                                
                                    //Set y position
                                    yy = 0;
                                
                                    //If moving up
                                    if (other.vspeed < 0)
                                        state = capestate.cape_spin_up;
                                    else
                                        state = capestate.cape_spin_down;
                                
                                    //Set the depth first
                                    if (image_index > 2.99) {
                                    
                                        if (other.depth == 10)
                                            depth = 10;
                                        else
                                            depth = -6;
                                    }
                                    else
                                        depth = other.depth+1;                                
                                }
                            
                                //Set the sprite
                                sprite_index = player_spin();
                                
                                //Animate
                                image_speed = 0.5;
                            }
                            
                            //Otherwise, if Mario is not doing a spinjump
                            else if (jumpstyle == false) {
                            
                                //With the cape
                                with (obj_cape) {
                                
                                    //Set depth
                                    depth = other.depth+1;
                                    yy = 0;
                                
                                    //Set state
                                    if (other.vspeed < 0)
                                        state = capestate.cape_jump_up;
                                    else
                                        state = capestate.cape_jump_down;
                                }
                            
                                //Set the sprite
                                sprite_index = player_hold2();
                                
                                //Do not animate
                                image_speed = 0;
                                image_index = 0;
                            }
                        }
                        
                        //Otherwise, if the player is swimming
                        else if (swimming) {
                        
                            //With the cape
                            with (obj_cape) {
                            
                                //Set depth
                                depth = other.depth+1;
                                yy = 0;
                            
                                //If moving up
                                if (other.vspeed < 0)
                                    state = capestate.cape_jump_up;
                                else
                                    state = capestate.cape_jump_down;
                            }
                        
                            //Set the sprite
                            sprite_index = player_swim2();
                            
                            //If moving up
                            if ((vspeed < 0) && (dive == 0))
                                image_speed = 0.15;
                                
                            //Otherwise, if moving down while holding
                            else if ((vspeed > 0) && (dive == 1))
                                image_speed = 0.15;
                            
                            //Otherwise
                            else {
                            
                                //Do not animate
                                image_speed = 0;
                                image_index = 0;
                            }
                        }
                    }
                }
            }
            
            //Set up the mask
            if (global.powerup > cs_pow_small)
                mask_index = spr_mask_player_big;
            else
                mask_index = spr_mask_player;
        }
    }
}

//Force end firing animation if walking
if (firing > 0)
&& (state == statetype.walk)
    firing = 0;

