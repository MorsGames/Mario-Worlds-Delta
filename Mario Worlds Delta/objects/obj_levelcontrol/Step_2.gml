/// @description Deals with music pitch

//Pause the music if 'Hurry' is being played
if (audio_is_playing(snd_hurry)) {

    //Pause 'levelmusic'
    if (audio_is_playing(global.stream)) 
        audio_pause_sound(global.stream);
    
    //Pause 'bgm_starman'
    else if (audio_is_playing(bgm_starman))
        audio_pause_sound(bgm_starman);
        
    //Pause 'bgm_pswitch
    else if (audio_is_playing(bgm_pswitch))
        audio_pause_sound(bgm_pswitch);
}

else {

    //Set pitch of music at 1.13
    if (global.time > 0) 
    && (global.time < 101) {
        
        audio_sound_pitch(global.stream, 1.33);
        audio_sound_pitch(bgm_starman, 1.33);
        audio_sound_pitch(bgm_pswitch, 1.33);
    }
    
    //Otherwise, set pitch to 1.0
    else {
    
        audio_sound_pitch(global.stream, 1);
        audio_sound_pitch(bgm_starman, 1);
        audio_sound_pitch(bgm_pswitch, 1);
    }

    //Resume 'levelmusic' if paused
    if (audio_is_paused(global.stream)) 
        audio_resume_sound(global.stream);
    
    //Resume 'bgm_starman' if paused
    else if (audio_is_paused(bgm_starman))
        audio_resume_sound(bgm_starman);
        
    //Resume 'bgm_starman' if paused
    else if (audio_is_paused(bgm_pswitch))
        audio_resume_sound(bgm_pswitch);
}

///Deals with the camera position

//Increment background position
pos -= 0.25;

//Set up object to follow
event_user(15);

//If the barrier is not enabled
if (barrier == true) {

    //If the player exists
    if (instance_exists(obj_playerparent)) {
        
        //If the player is at the leftmost part of the view
        if (obj_playerparent.x < __view_get( e__VW.XView, view_current )+8) {
        
            //If the cape object exists
            if (instance_exists(obj_cape_fly)) {
            
                obj_cape_fly.x = __view_get( e__VW.XView, view_current )+8;
                if (obj_cape_fly.hspeed < 0)
                    obj_cape_fly.hspeed = 0;
            }
            
            //Prevent the player from getting outside the view
            obj_playerparent.x = __view_get( e__VW.XView, view_current )+8;
            if (obj_playerparent.hspeed < 0)
                obj_playerparent.hspeed = 0;
        }
        
        //Otherwise, if the player is at the rightmost part of the view
        else if (obj_playerparent.x > __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )-8) {
        
            //If the cape object exists
            if (instance_exists(obj_cape_fly)) {
            
                obj_cape_fly.x = __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )-8;
                if (obj_cape_fly.hspeed > 0)
                    obj_cape_fly.hspeed = 0;                    
            }
            
            //Prevent the player from getting outside the view
            obj_playerparent.x = __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )-8;
            if (obj_playerparent.hspeed > 0)
                obj_playerparent.hspeed = 0;    
        }
    }
}

//If the autoscroll object does exist
if (instance_number(obj_autoscroll) > 0) 
&& (instance_number(obj_player_clear) == 0) {

    //Set vertical view speed
    __view_set( e__VW.VSpeed, view_current, -1 );    
    
    //Snap into position
    x = obj_autoscroll.x;
    y = obj_autoscroll.y+obj_autoscroll.airshipoffset;
}

//Otherwise
else {

    //Follow
    if (follow != noone) {
        
        //Pan instantly if the barrier is deactivated
        if (barrier == false) {
        
            x = follow.x;
            y = follow.y;
        }
        
        //Otherwise, perform movement depending of the given conditions
        else {
        
            //Stay relative to the player's y position
            if (instance_exists(obj_playerparent)) {
            
                //If the player is running
                if (obj_playerparent.run == true) {
                
                    y = obj_playerparent.y;
                    if (__view_get( e__VW.VSpeed, view_current ) != 6)
                        __view_set( e__VW.VSpeed, view_current, 6 );
                }
                    
                //Otherwise, if the player is climbing or wall running
                else if ((obj_playerparent.state == statetype.climb) || (instance_exists(obj_player_wallrunning))) {
                
                    y = obj_playerparent.y;
                    if (__view_get( e__VW.VSpeed, view_current ) != 6)
                        __view_set( e__VW.VSpeed, view_current, 6 );
                }
                    
                //Otherwise
                else {
                
                    //If the player is swimming
                    if (obj_playerparent.swimming == true) {
                    
                        y = obj_playerparent.y;
                        if (__view_get( e__VW.VSpeed, view_current ) != 6)
                            __view_set( e__VW.VSpeed, view_current, 6 );
                    }
                        
                    //Otherwise
                    else if (obj_playerparent.swimming == false) {
                    
                        //If the player is idle or walking
                        if (obj_playerparent.state == statetype.idle) 
                        || (obj_playerparent.state == statetype.walk) {
                        
                            //Position player just reached
                            if (camlock == false) then { floorY = obj_playerparent.y; }
                        
                            //If the player is above the camera
                            if (obj_playerparent.y < y) {
                            
                                //If the camera is 4 pixels below the player y position, move 4 pixels upwards until the camera catches the player.
                                if (y > obj_playerparent.y+4)
                                    y -= 4;
                                    
                                //Otherwise
                                else {
                                
                                    y = obj_playerparent.y;
                                    if (__view_get( e__VW.VSpeed, view_current ) != 6)
                                        __view_set( e__VW.VSpeed, view_current, 6 );
                                }
                            }
                        } 
                        else {
                        
                            //If player didn't reach Y position on the ground, catch the player (only applies going up)
                            if (round(y) > floorY)
                                y -= 4;
                        }
                        
                        //If the player is below the camera, catch him instantly
                        if (obj_playerparent.y > y) {
                        
                            y = obj_playerparent.y;
                            if (__view_get( e__VW.VSpeed, view_current ) != -1)
                                __view_set( e__VW.VSpeed, view_current, -1 );
                        }
                    }
                }
            }
            else {
            
                y = follow.y;
                if (__view_get( e__VW.VSpeed, view_current ) != 4)
                    __view_set( e__VW.VSpeed, view_current, 4 );
            }
            
            var check_hspd = follow.hspeed;
            
            if (instance_exists(obj_cape_fly)) {
            
                check_hspd = obj_cape_fly.hspeed;
                
            }
            
            //If the camera is to the right and the player is from a certain distance from the camera
            if ((orientation == 1) && (follow.x > x-16)) {
        
                //If the player has ended a level
                if (follow == obj_player_clear) {
                
                    //If the player did not stopped yet...
                    if (obj_player_clear.ready3 == 0) {
                    
                        //Scroll the camera at a certain speed until the camera catches up.
                        if (follow.x > x-12)
                            x += 2+check_hspd;
                        else
                            x = follow.x+16;                           
                    }
                }
                
                //Otherwise
                else {
                
                    //Scroll the camera at a certain speed until the camera catches up.
                    if (follow.x > x-12)
                        x += 2+check_hspd;
                    else
                        x = follow.x+16;
                }
            }
            
            //Otherwise, if the camera is to the left and the player is from a certain distance from the camera
            else if ((orientation == -1) && (follow.x < x+16)) {
            
                //Scroll the camera at a certain speed until the camera catches up.
                if (follow.x < x+12)
                    x -= 2-check_hspd;
                else
                    x = follow.x-16;    
            }
            
            //If the player is moving to the left and the camera is panning to the right, make the camera pan to the left
            if ((follow.x-xprevious < 0) && (follow.x < x-40))
                orientation = -1;
            
            //Otherwise, if the player is moving to the right and the camera is panning to the left, make the camera pan to the right.
            else if ((follow.x-xprevious > 0) && (follow.x > x+40))
                orientation = 1;
        }
    }
}

//Round position
x = round(x);
y = round(y);

///Deals with various game logic parameters

//Update animated tiles
animated_tile_update();

//Get 1-UP for each 100 coins
if (global.coins > 99) {
    
    //Reset counter
    global.coins -= 100;
    
    //Get 1-UP
    obj_controller.givelives++;
}

//Warn the player that the p-switch is running out
if (switchon) {
    
    //If the p-switch effect will last less than 2 seconds, warn the player
    if (warning == 0)
    && ((alarm[6] >= 31) && (alarm[6] < 120)) {
    
        //Play 'Switch Timer' sound
        audio_stop_play_sound(snd_switchtimer, 0, false);
        
        //Warn
        warning = 1;
    }
    else if ((warning == 1) && (alarm[6] > 120))
        warning = 0;
}
else
warning = 0;

//Warn the player that the p-switch is running out
if (gswitchon) {
    
    //If the p-switch effect will last less than 2 seconds, warn the player
    if (swarning == 0)
    && ((alarm[7] >= 31) && (alarm[7] < 120)) {
    
        //Play 'Switch Timer' sound
        audio_stop_play_sound(snd_switchtimer, 0, false);
        
        //Warn
        swarning = 1;
    }
    else if ((swarning == 1) && (alarm[7] > 120))
        swarning = 0;
}
else
swarning = 0;

//Drop reserve item
if (instance_exists(obj_playerparent))
&& (barrier == 1)
&& (input_check_pressed(input.select))
&& (obj_playerparent.control_enable == true)
    event_user(1);

//Deactivate objects under the following parents
instance_deactivate_object(obj_deactenemyparent);
instance_deactivate_object(obj_deactivateparent);

//Activate things that are on screen
instance_activate_region(__view_get( e__VW.XView, view_current )-64, __view_get( e__VW.YView, view_current )-32, __view_get( e__VW.WView, view_current )+64, __view_get( e__VW.HView, view_current )+32, 1);

