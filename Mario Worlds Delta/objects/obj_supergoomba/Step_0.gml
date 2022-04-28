/// @description Brick Goomba logic

//Wall collision
event_user(3);

//Floor collision
event_user(4);

//Set up the facing direction if in ground and make it jump again
if (gravity == 0) {

    //If the object jumped
    if (jumping == 2) {
    
        //Play 'Thud' sound
        audio_play_sound(snd_thud, 0, false);
    
        //Stop horizontal movement
        hspeed = 0;
    
        //End jump
        jumping = 3;
        
        //Jump again
        alarm[0] = 60;
    }
    
    //Otherwise, if the player does exist and it's nearby
    else if (jumping == 0) {
    
        //If the player does exist
        if (instance_exists(obj_playerparent)) 
        && (obj_playerparent.x > bbox_left-32)
        && (obj_playerparent.x < bbox_right+32) {
        
            //Animate
            image_speed = 0.125;
        
            //Start jump
            jumping = 1;
        }
    }
}

//If moving down, allow landing
if (vspeed > 0)
&& (jumping == 1)
    jumping = 2;

