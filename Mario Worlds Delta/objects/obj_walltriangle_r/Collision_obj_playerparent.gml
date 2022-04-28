//Make the player able to run up the wall

//If the player is not riding anything
if (global.mount == 0) {

    //If the player meets the following conditions
    if (other.state == statetype.walk)
    && (other.crouch == 0)
    && (other.holding == 0)
    && (other.swimming == false) {
    
        //If the player is moving to the right
        if (other.hspeed > other.hspeed_run-0.5)
        && (position_meeting(x+24, y-8, obj_solid))    
            with (instance_create(x+1, y-8, obj_player_wallrunning)) angle = 45;
    }
}

