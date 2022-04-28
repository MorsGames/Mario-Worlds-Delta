/// @description Switch Palace logic

//Check for the player object
var player = collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 1);

//If the player does exist
if (player)
&& (ready == false)
&& ((player.state == statetype.idle) 
|| (player.state == statetype.walk)) {

    //Play 'Explosion' sound
    audio_stop_play_sound(snd_explosion, 0, false);
    
    //Shake screen
    init_shake(25);
    
    //Play 'Palace Clear' fanfare
    audio_stop_play_sound(snd_palaceclear, 0, false);
    
    //Destroy solid mask
    with (mysolid) instance_destroy();
    
    //Activate blocks
    switch (sprite_index) {
    
        //Yellow
        case (spr_palaceswitch_y): global.palaceswitch_y = 1; break;
        
        //Green
        case (spr_palaceswitch_g): global.palaceswitch_g = 1; break;
        
        //Red
        case (spr_palaceswitch_r): global.palaceswitch_r = 1; break;
        
        //Blue
        case (spr_palaceswitch_b): global.palaceswitch_b = 1; break;
    }
    
    //Stop both music and timer
    with (obj_levelcontrol) {
    
        musicdisable = true;
        alarm[1] = 1;
        alarm[2] = -1;
        alarm[3] = -1;
        alarm[4] = -1;
    }
    
    //Ready
    ready = 1;
    
    //Clear stage
    global.clear = 1;
    
    //Remember yoshi colour
    alarm[0] = 1;
    
    //Delay message creation
    alarm[1] = 3;
}

