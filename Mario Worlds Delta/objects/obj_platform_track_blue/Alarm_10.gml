/// @description Move if activated

//If the ON/OFF block is ON, allow movement
if (global.onoff_block == 0) {
    
    //Check arrow in position
    if (collision_rectangle(x, y, x+15, y+15, obj_up, false, false))
        direction = 90;
    else if (collision_rectangle(x, y, x+15, y+15, obj_down, false, false))
        direction = 270;
    else if (collision_rectangle(x, y, x+15, y+15, obj_left, false, false))
        direction = 180;
    else if (collision_rectangle(x, y, x+15, y+15, obj_right, false, false))
        direction = 0;
        
    //Otherwise, if there's no arrow
    else {
    
        //Set sprite
        sprite_index = spr_platform_track_blue_b;
        
        //Blink
        alarm[0] = 60;
        
        //Set state as remove
        ready = 2;
        
        //Exit
        exit;
    }
    
    //Set motion
    speed = 1;
}
else
    alarm[10] = 1;

