/// @description Map player logic

//Check for a node
node = collision_point(x+xorig, y+yorig, obj_node, 0, 0);

//Update animation speed
image_speed = 0.125;

//If the player is not moving
if (status == mapstate.idle) 
|| (status == mapstate.wait) 
|| (status == mapstate.preidle) {

    //Check for a panel
    panel = collision_point(x+xorig, y+yorig, obj_levelpanel, 0, 0);
    
    //If the map HUD exists
    if (instance_exists(obj_hud_map)) {
    
        //If there's a panel, print the name on the HUD
        if (panel)
            obj_hud_map.levelname = string(panel.levelname);
        else
            obj_hud_map.levelname = "";   
                     
    }
    
    if (status != mapstate.wait) {
    
        //Do not allow movement if there's paths opening
        if (is_ready == 0)
        && (obj_controller.fade == 1)
        && (instance_number(obj_mapopener) == 0) {
    
            //Moving upwards
            if (input_check(input.up)) {
            
                //Check for a path above
                var pathU = collision_point(x+xorig, y+yorig-8, obj_pathparent, 0, 0);
            
                //If there's a path above and it is visible
                if (pathU) 
                && (pathU.image_alpha == 1) {
                
                    direct = 90;
                    status = mapstate.prep;
                }
            }
            
            //Moving downwards
            else if (input_check(input.down)) {
            
                //Check for a path above
                var pathD = collision_point(x+xorig, y+yorig+9, obj_pathparent, 0, 0);
            
                //If there's a path above and it is visible
                if (pathD) 
                && (pathD.image_alpha == 1) {
                
                    direct = 270;
                    status = mapstate.prep;
                }
            }
            
            //Moving to the left
            else if (input_check(input.left)) {
            
                //Check for a path above
                var pathL = collision_point(x+xorig-8, y+yorig, obj_pathparent, 0, 0);
            
                //If there's a path above and it is visible
                if (pathL) 
                && (pathL.image_alpha == 1) {
                
                    direct = 180;
                    status = mapstate.prep;
                }
            }
            
            //Moving to the right
            else if (input_check(input.right)) {
            
                //Check for a path above
                var pathR = collision_point(x+xorig+9, y+yorig, obj_pathparent, 0, 0);
            
                //If there's a path above and it is visible
                if (pathR) 
                && (pathR.image_alpha == 1) {
                
                    direct = 0;
                    status = mapstate.prep;
                }
            }
                
            //Change player
            if (input_check_pressed(input.select) && instance_exists(obj_mapplayer_switcher)) {
            
                last_player = global.player;
            
                global.player ++;
                if (global.player > 3)
                    global.player = 0;
                    
                status = mapstate.switching;
                    
            }
            
            //If there's a panel and this panel is available        
            if (panel)
            && (panel.beaten < 2)
            && ((status == mapstate.idle)
            || (status == mapstate.preidle))
            && ((input_check_pressed(input.action0))
            || (input_check_pressed(input.action2))) {
            
                //Play 'Enter Stage' sound
                audio_stop_play_sound(snd_enterstage, 0, false);
            
                //The player is ready
                is_ready = 1;
                
                //Stop music
                obj_mapmanager.alarm[1] = 1;
                
                //Go to the stage
                panel.alarm[1] = 60;
            }
        
        }
    }
    
}

//Otherwise, if the player is moving
else if (status == mapstate.walk) {

    //Update steps
    step += spd;
    while (step >= 1) {
    
        //Travel through paths
        if (collision_point(x+xorig+cos(degtorad(direct)), y+yorig-sin(degtorad(direct)), obj_pathparent, 1, 0)) {
        
            x += cos(degtorad(direct));
            y += -sin(degtorad(direct));
        }
        else if (collision_point(x+xorig+cos(degtorad(direct))-sin(degtorad(direct)), y+yorig-sin(degtorad(direct))-cos(degtorad(direct)), obj_pathparent, 1, 0)) {
        
            x += cos(degtorad(direct))-sin(degtorad(direct));
            y += -sin(degtorad(direct))-cos(degtorad(direct));
        }
        else if (collision_point(x+xorig+cos(degtorad(direct))+sin(degtorad(direct)), y+yorig-sin(degtorad(direct))+cos(degtorad(direct)), obj_pathparent, 1, 0)) {
        
            x += cos(degtorad(direct))+sin(degtorad(direct));
            y += -sin(degtorad(direct))+cos(degtorad(direct));
        }
        else if (collision_point(x+xorig-sin(degtorad(direct)), y+yorig-cos(degtorad(direct)), obj_pathparent, 1, 0)) {
        
            x += -sin(degtorad(direct));
            y += -cos(degtorad(direct));
            direct += 90;
        }
        else if (collision_point(x+xorig+sin(degtorad(direct)), y+yorig+cos(degtorad(direct)), obj_pathparent, 1, 0)) {
        
            x += sin(degtorad(direct));
            y += cos(degtorad(direct));
            direct -= 90;
        }
        else 
            direct += 180;
        
        //Reset angles
        if (direct < 0) then direct += 360;
        if (direct >= 360) then direct -= 360;
        
        //Stop when inside a node
        node = collision_point(x+xorig, y+yorig, obj_node, 0, 0);
        
        //If there's a node
        if (node) {
        
            //If the player is at the center of the node
            if (x+xorig == node.x+7)
            && (y+yorig == node.y+7) {
            
                //Play 'Move' sound
                audio_stop_play_sound(snd_move, 0, false);
            
                //Set stop state
                status = mapstate.preidle;
                
                //Wait to be able to walk again
                alarm[2] = 20;
                
                //Reset steps
                step = 0;
                
                //Exit
                exit;
            }
        }
        
        //Update step
        step--;
    }
            
    //Update spd
    if (is_climbing == false)
        spd = 1;
    else
        spd = 0.5;
}

//Check for a climbing object
if (collision_point(x+xorig, y+yorig, obj_climb, 0, 0))
    is_climbing = true;
else
    is_climbing = false;
    
//Check for a swimming object
if (collision_point(x+xorig, y+yorig, obj_swim, 0, 0))
    is_swimming = true;
else
    is_swimming = false;
    
//If the player is standing still...
if (status == mapstate.idle) {

    //If a level isn't about to start and there is no map switcher already...
    if (!is_ready && !instance_exists(obj_mapplayer_switcher)) {
    
        //If wait time isn't over
        if (player_wait < wait_time) {
    
            //Add to wait time
            player_wait ++;
            
            //If wait time has been reached...
            if (player_wait == wait_time) {
            
                //Create the switcher, and...
                with (instance_create(x,y,obj_mapplayer_switcher)) {
                
                    //Set their destination position
                    dest_x = other.x + 16;
                
                }
                
                //Rest the player wait timer
                player_wait = 0;
            
            }
            
        }
        
    }

} else {

    //If the player is getting ready to move...
    if (status == mapstate.prep) {

        //And there's no map buddy...
        if (!instance_exists(obj_mapplayer_switcher)) {
    
            //Start walking.
            status = mapstate.walk;
        
        //Otherwise...
        } else {
        
            //If the map buddy has finished their initial movement...
            if (obj_mapplayer_switcher.state == 2) {
            
                //Start bringing them back to the player.
                obj_mapplayer_switcher.state = 3;
            
            }
            
        }
        
    } else if (status == mapstate.switching) {
    
        //Face forward
        direct = 270;
    
        //If the map buddy has finished their initial movement...
        if (obj_mapplayer_switcher.state == 2) {
        
            //Start bringing them back to the player.
            obj_mapplayer_switcher.state = 3;
            obj_mapplayer_switcher.switching = true;
            obj_mapplayer_switcher.depth = depth-1;
        
        }
    
    }
    
    //Reset wait time
    player_wait = 0;

}

