/// @description Boost panel logic

//Check for the player
var player = collision_rectangle(bbox_left, bbox_top-2, bbox_right, bbox_top+1, obj_playerparent, 1, 0);

//If the player is in position
if (player)
&& (player.state != statetype.jump)
&& (player.state != statetype.climb) 
&& (input_check(input.action1)) {

    //If the panel is not animating faster
    if (image_speed = 0.2) 
    && (player.hspeed != 0) {
    
        //Play 'Boost' sound
        audio_stop_play_sound(snd_boost, 0, false);
    
        //Give the player a good boost
        with (obj_playerparent) {
        
            //Boost
            hspeed = (hspeed_run_full)*sign(hspeed);
            
            //Boost the player
            boostme = 120;
            
            //Make the player run
            run = true;
            
            //Fill P-Meter
            if (pmeter < 112)
                pmeter = 112;
        }
        
        //Animate faster
        image_speed = 0.6;
        
        //Set default animation speed
        alarm[0] = 60;
    }
}

