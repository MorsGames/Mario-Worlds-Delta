/// @description NPC logic

//Inherit event from parent
event_inherited();

//Check for the player
player = collision_rectangle(bbox_left-32, bbox_top, bbox_right+32, bbox_bottom, obj_playerparent, 0, 0);

//If the player exists
if (player)
&& (player.state != statetype.jump)
&& (player.state != statetype.climb) {

    //If the player presses the 'Up' key, make the NPC talk
    if (input_check_pressed(input.up)) 
    && (varmsg != "No message was set") {
    
        //Play 'Message' sound
        audio_stop_play_sound(snd_message, 0, false);
        
        //If the player exists
        if (instance_exists(obj_playerparent)) {
        
            //If the player is above the center of the screen
            if (obj_playerparent.y < __view_get( e__VW.HView, view_current )/2) {
                
                //Display message
                with (instance_create(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) / 2 - 116, __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) - 64, obj_dialog)) {
                
                    varmsg = other.varmsg;
                    mugshot = other.mugshot;
                }
            }
            
            //Otherwise
            else {
                
                //Display message
                with (instance_create(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) / 2 - 116, __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) - 176, obj_dialog)) {
                
                    varmsg = other.varmsg;
                    mugshot = other.mugshot;
                }            
                
            }
        }
        else {
                    
            //Display message
            with (instance_create(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) / 2 - 116, __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) - 64, obj_dialog)) {
            
                varmsg = other.varmsg;
                mugshot = other.mugshot;
            }            
        }
    }
}

//Follow the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

