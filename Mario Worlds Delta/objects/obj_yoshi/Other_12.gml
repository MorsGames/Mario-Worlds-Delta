/// @description Check if yoshi has abilities or a shell inside and give the required ability.

if (mouthholder == obj_shell)
&& (instance_number(obj_tongue) == 0) {
    
    //If yoshi is yellow or has a yellow shell in mouth
    if (colour == 2) 
    || (mouthsprite == spr_shell_yellow) 
    || (mouthsprite == spr_shell_kamikaze) {
                    
        //If the player lands after a jump, stomp
        if (stateprev == statetype.jump)
        && (obj_playerparent.state != statetype.jump) {
          
            //Play 'Yoshi Stomp' sound
            audio_stop_play_sound(snd_stomp_yoshi, 0, false);
            
            //Create 'Stomp' object
            instance_create(x, bbox_bottom, obj_stomp);
        }
    }
    
    //If yoshi is blue or has a blue shell in mouth
    if (colour == 3)
    || (mouthsprite == spr_shell_blue) 
    || (mouthsprite == spr_shell_kamikaze) {
    
        //If 'Shift' is being held outside water
        if (input_check(input.action0)) 
        && (obj_playerparent.swimming == false) {
        
            //If not flying and moving down, start flying.
            if (flying == 0)
            && (obj_playerparent.vspeed > 0) 
            && (obj_playerparent.flying = 0) {
            
                flying = 1;
                alarm[4] = 1;
            }
            
            //When flying
            if (flying == 1) {
            
                //With the player
                with (obj_playerparent) {
                
                    //If there's not a ceiling above the player, move up
                    if (!collision_rectangle(bbox_left, bbox_top-3, bbox_right, bbox_top, obj_solid, 0, 0))
                    && (!collision_rectangle(bbox_left, bbox_top-3, bbox_right, bbox_top, obj_slopeparent_ceiling, 1, 0)) {
                    
                        //If the player has the cape powerup
                        if (global.powerup == cs_pow_cape) {
                        
                            vspeed += -1;
                            if (vspeed < -2)
                                vspeed = -2;
                        }
                        
                        //Otherwise
                        else if (other.flytime < 30) {
                            
                            vspeed += -1;
                            if (vspeed < -2)
                                vspeed = -2;
                        }                                                     
                    }
                }
                
                //Increment fly animation
                flyanim += 0.25; 
                
                //Increment fly time
                flytime++;
                if (flytime > 30)
                && (global.powerup < cs_pow_cape)
                    flying = 2;                
            }
            
            //Otherwise, reset fly animation and timer
            else {
            
                flyanim += 0.083;
                if (flytime > 0)
                    flytime = 0;
            }
        }
        
        //Otherwise, reset flight
        else {
        
            audio_stop_sound(snd_fly);
            flying = 0;
            flyanim = 0;
        }
        
        //If 'Jump' is no longer pressed, reset timer
        if (flytime > 0)
        && (input_check_released(input.action0))
            flytime = 0;
    }    
}

//Remember last state
stateprev = obj_playerparent.state;

//Turn kicked shells into holdable shells
if (mouthholder == obj_shell_kicked)
    mouthholder = obj_shell;

