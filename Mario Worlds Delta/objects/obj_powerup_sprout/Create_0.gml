/// @description A powerup that is coming from a block

//Does this object bounce outta the block
bouncy = 0;

//Does this object come from a big block
big = 0;

//Do not animate
image_speed = 0;

//Item check
alarm[0] = 2;

//Allow block exit
ready = 0;
alarm[1] = 62;

//Set animation
alarm[2] = 1;

//If there is a solid on top of the block
if (position_meeting(x, y-8, obj_solid)) {

    //Go down if both sides are blocked
    if (position_meeting(x-16, y+8, obj_solid))
    && (position_meeting(x+16, y+8, obj_solid))
        vspeed = 0.25;

    //Go right if the left side is blocked
    else if (position_meeting(x-16, y+8, obj_solid))
        hspeed = 0.25;

    //Go left if the right side is blocked
    else if (position_meeting(x+16, y+8, obj_solid))
        hspeed = -0.25;

    //Otherwise, go towards the player
    else {
    
        //If the player does exist
        if (instance_exists(obj_playerparent)) {
        
            if (obj_playerparent.x > x)
                hspeed = 0.25;
            else
                hspeed = -0.25;
        }
        
        //Otherwise, if it does not exist.
        else
            hspeed = -0.25;
    }
}

//Otherwise, move up
else
    vspeed = -0.25;

