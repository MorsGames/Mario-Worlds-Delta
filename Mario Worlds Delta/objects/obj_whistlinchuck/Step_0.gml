/// @description Whistlin' Chuck logic

//Floor collision
event_user(4);

//Look towards the player
event_user(8);

//If the player exists
if (instance_exists(obj_playerparent)) {

    //If not whistling
    if (ready == 0) {
    
        //If the player is within the range
        if (swimming == true)
        && (obj_playerparent.x > bbox_left-32)
        && (obj_playerparent.x < bbox_right+32) {
        
            //Start whistling
            audio_stop_play_sound(snd_chuck_whistle, 0, false);
            
            //Wake up all nearby enemies
            global.whistle = 1;
            
            //Repeat every 1.5 seconds
            alarm[0] = 90;
            
            //Start whistling
            ready = 1;
            
            //Set the sprite
            sprite_index = spr_whistlinchuck;
            
            //Spawn in a super koopa
            if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0)) {
            
                //Choose a side to spawn from
                var spawn_x = choose(__view_get( e__VW.XView, view_current )-16,__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+16);
                
                //Choose a random Y position to spawn in at
                var spawn_y = irandom_range(__view_get( e__VW.YView, view_current )+16,__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )-96);
                
                //Create the koopa
                instance_create(spawn_x,spawn_y,obj_superkoopa_green);
            
            }
            
        }
    }
}

//Check for a water object
var water = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0);

//If the object is not underwater and makes contact with water
if (water) 
&& (!swimming) {

    //Make the object go underwater
    swimming = true;
    
    //Stop vertical movement
    gravity = 0;
    if (vspeed > 0)
        vspeed = 0;
}

//Otherwise, if the object is underwater and it's not underwater, end swimming.
else if (!water) 
&& (swimming)
    swimming = false;

