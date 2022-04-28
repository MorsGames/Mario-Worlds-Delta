/// @description Wallrunner logic

//If the player does not exist or the player is transforming
if (!instance_exists(obj_playerparent))
|| (instance_exists(obj_player_transform)) {

    //Destroy and exit
    instance_destroy();
    exit;
}

//Update sprite
sprite_index = player_run();

//Animation
image_speed = 0.4;

//Snap player
obj_playerparent.hspeed = 0;
obj_playerparent.vspeed = 0;
obj_playerparent.x = x;
obj_playerparent.y = y;

//Jumping
if (input_check_pressed(input.action0)) {

    //Play 'Jump' sound
    audio_stop_play_sound(snd_jump, 0, false);

    //Make the player jump
    with (obj_playerparent) {
    
        vspeed = other.vspeed;
        hspeed = -3*other.xscale;
        xscale = -xscale;
        angle = 45;
        alarm[2] = 4;
    }
    
    //Destroy
    instance_destroy();
}

//If the player is running in a clockwise movement
else if (xscale > 0) {

    //If the player can turn and there's not a wall at the right
    if (ready)
    && (!collision_rectangle(bbox_right+4, bbox_top, bbox_right+8, bbox_bottom, obj_solid, 0, 0)) {
    
        //With the player
        with (obj_playerparent) {
        
            hspeed = other.speed;
            pmeter = 112;
            angle = 45;
            x += 4.5;
            alarm[2] = 4;
        }
        
        //Destroy
        instance_destroy();
    }

    //If both 'Control' and 'Right' are held
    if ((input_check(input.action1)) && (input_check(input.right)))
        speed += .1;
    else
        speed -= .05;
}

//If the player is running on a counter-clockwise movement
else if (xscale < 0) {
    
    //If the player can turn and there's not a wall at the right
    if (ready)
    && (!collision_rectangle(bbox_left-8, bbox_top, bbox_left-4, bbox_bottom, obj_solid, 0, 0)) {
    
        //With the player
        with (obj_playerparent) {

            hspeed = other.speed*-1;
            pmeter = 112;
            angle = 315;
            x -= 4.5;
            alarm[2] = 4;
        }
        
        //Destroy
        instance_destroy();
    }
    
    //If both 'Control' and 'Left' are held
    if ((input_check(input.action1)) && (input_check(input.left)))
        speed += .1;
    else
        speed -= .05;
}

//If the player slows down or makes contact with a solid
if (speed < (obj_playerparent.hspeed_walk+0.3)) 
|| ((ready) && (position_meeting(x, y, obj_solid))) {

    //With the player
    with (obj_playerparent) {
    
        hspeed = other.hspeed;
        vspeed = other.vspeed;
        angle = 315;
        alarm[2] = 4;
    }
    
    //Destroy
    instance_destroy();
}

//Cap maximum speed
if (speed > obj_playerparent.hspeed_run)
    speed = obj_playerparent.hspeed_run;

