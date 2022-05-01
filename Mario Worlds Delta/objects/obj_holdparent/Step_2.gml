/// @description Held item logic (When held)
/// @param When held

if (held) {

    //Do not allow swim
    swimming = false;
    
    //Do not reset position
    carried = true;
    
    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player control is not disabled
        if (obj_playerparent.control_enable) {
        
            //If the player is turning
            if (obj_playerparent.turnnow == 1) {
            
                //Set the depth
                depth = -6;
                
                //Snap into player's x position
                x = obj_playerparent.x;
            }
            
            //Otherwise
            else {
            
                //Set depth
                depth = obj_playerparent.depth+1;
                
                //Snap into player's x position
                if (obj_playerparent.state == statetype.climb)
                    x = obj_playerparent.x;
                else
                    x = obj_playerparent.x+(10*sign(obj_playerparent.xscale));
            }
            
            //Make the player hold the item
            if (input_check(input.action1))
                obj_playerparent.holding = 1;
                
            //Otherwise, release the item
            else {
            
                //Make the player stop holding
                obj_playerparent.holding = 0;
                
                //Stop being held
                held = false;
                
                //Set the depth
                depth = -2;
                
                //Kick the item
                event_user(2);
                
                //Make the player 'Kick' the item if there's input
                if (input_check(input.up)) 
                || (obj_playerparent.hspeed != 0)
                    with (obj_playerparent) event_user(2);
            }
            
            //Set the direction
            dir = obj_playerparent.xscale;
            
            //If the player is crouched down
            if (obj_playerparent.crouch)
                y = obj_playerparent.y;
                
            //Otherwise
            else {
            
                //If the player controlled is peach
                if (global.player == 3) {
                
                    //If the player is big
                    if (obj_playerparent.mask_index != spr_mask_player_big)
                        y = obj_playerparent.y-2+obj_playerparent.offset;
                    else
                        y = obj_playerparent.y-8+obj_playerparent.offset;
                }
                
                //Otherwise
                else {
                
                    //If the player is big
                    if (obj_playerparent.mask_index != spr_mask_player_big)
                        y = obj_playerparent.y-2;
                    else
                        y = obj_playerparent.y-4;
                }
            }
        }
        
        //Otherwise if controls are disabled, stop holding.
        else {
        
            //Make the player stop holding
            obj_playerparent.holding = 0;
            
            //Stop being held
            held = false;
            
            //Set the depth
            depth = -2;
            
            //Kick the item
            event_user(2);
            
            //Make the player 'Kick' the item if there's input
            if (input_check(input.up)) 
            || (obj_playerparent.hspeed != 0)
                with (obj_playerparent) event_user(2);                 
        }
        
        //Make visible always
        visible = 1;
    }
    
    //Otherwise, check who is holding this item
    else {
    
        //Check what object is holding
        event_user(13);
        
        //Then check if it exists
        if (instance_exists(follow)) {
        
            //Snap into position
            x = follow.x;
            y = follow.y;
            
            //Make it invisible
            visible = 0;
            
            //With the followed object
            with (follow) {
            
                holding = 1;
                myitem = other.sprite_index;
                myframe = other.image_index;
            }
        }
    }
    
    //Release if the player does not exist
    if (!instance_exists(obj_playerparent))
    && (follow == noone)
        held = false;
}

//If not held, inherit default event
if (!held)
    event_inherited();

