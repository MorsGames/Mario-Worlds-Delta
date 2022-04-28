/// @description Draw Yoshi

//If yoshi is not being ridden
if (state != yoshistate.ridden) {

    //Set the shader
    pal_swap_set(pal_sprite, colour);
    
    //Draw it normally
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), xscale, 1, 0, c_white, 1);
    
    //Reset shader
    pal_swap_reset();
    
    //Draw yoshi's wing
    if (mouthholder == obj_shell)
    && (instance_number(obj_tongue) == 0) {
    
        if (colour == 3)
        || (mouthsprite == spr_shell_blue) {
        
            if (state == yoshistate.idle)
                draw_sprite_ext(spr_koopa_wing, 0, round(x), round(y)+4, xscale, 1, 0, c_white, 1);
            else
                draw_sprite_ext(spr_koopa_wing, 0, round(x), round(y)+1, xscale, 1, 0, c_white, 1);
        }
    }
}

else if (state == yoshistate.ridden) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //Set the shader
        pal_swap_set(pal_sprite, colour);
        
        //Draw Yoshi
        draw_sprite_ext(sprite_index, image_index, round(x), round(y), obj_playerparent.xscale, 1, 0, c_white, 1);
            
        //Reset shader
        pal_swap_reset();
        
        //Draw the player
        event_user(10);
        
        //Draw yoshi's wing
        if (mouthholder == obj_shell)
        && (instance_number(obj_tongue) == 0) {
        
            if (colour == 3)
            || (mouthsprite == spr_shell_blue)
                draw_sprite_ext(spr_koopa_wing, flyanim, round(x), round(y)+1+(3*obj_playerparent.crouch), obj_playerparent.xscale, 1, 0, c_white, 1);
        }
    }
    
    //Otherwise, if the player exists and it is warping through a pipe
    else if (instance_exists(obj_player_warp)) {
    
        //If the player is not moving vertically
        if (obj_player_warp.vspeed == 0) {
        
            //Set the shader
            pal_swap_set(pal_sprite, colour);
            
            //Draw wings
            if (mouthholder == obj_shell) {
            
                if (colour == 3)
                || (mouthsprite == spr_shell_blue) {
                
                    draw_sprite_ext(spr_koopa_wing, 0, round(x)+12, round(y), 1, 1, 0, c_white, 1);
                    draw_sprite_ext(spr_koopa_wing, 0, round(x)-12, round(y), -1, 1, 0, c_white, 1);
                }
            }
            
            //Draw yoshi
            draw_sprite_ext(sprite_index, image_index, round(x), round(y), obj_player_warp.image_xscale, 1, 0, c_white, 1);
            
            //Reset shader
            pal_swap_reset();    
        }
        
        //Draw the player
        event_user(11);
        
        //If the player is moving vertically.
        if (obj_player_warp.vspeed != 0) {
        
            //Set the shader
            pal_swap_set(pal_sprite, colour);
            
            //Draw yoshi
            draw_sprite_ext(sprite_index, image_index, round(x), round(y), obj_player_warp.image_xscale, 1, 0, c_white, 1);
            
            //Reset shader
            pal_swap_reset();          
        }
    }
    
    //Otherwise, if the player exists and it is warping through a door
    else if (instance_exists(obj_player_door)) {
    
        //Set the shader
        pal_swap_set(pal_sprite, colour);
        
        //Draw yoshi
        draw_sprite_ext(sprite_index, 0, round(x), round(y)+1, obj_player_door.image_xscale, 1, 0, c_white, 1);
        
        //Reset shader
        pal_swap_reset();     
    
        //Draw the player
        event_user(12);
        
        //Draw yoshi's wing
        if (mouthholder == obj_shell) {
        
            if (colour == 3)
            || (mouthsprite == spr_shell_blue)
                draw_sprite_ext(spr_koopa_wing, 0, round(x), round(y)+1, obj_player_door.image_xscale, 1, 0, c_white, 1);
        }
    }
    
    //Otherwise, if the player exists and the level has been cleared
    else if (instance_exists(obj_player_clear)) {
    
        //Set the shader
        pal_swap_set(pal_sprite, colour);
        
        //Draw Yoshi
        draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, obj_player_clear.image_xscale, 1, 0, c_white, 1);
            
        //Reset shader
        pal_swap_reset();
        
        //Draw the player
        event_user(13);
        
        //Draw yoshi's wing
        if (mouthholder == obj_shell)
        && (instance_number(obj_tongue) == 0) {
        
            if (colour == 3)
            || (mouthsprite == spr_shell_blue)
                draw_sprite_ext(spr_koopa_wing, 0, round(x), round(y)+1, obj_player_clear.image_xscale, 1, 0, c_white, 1);
        }
    }
}

