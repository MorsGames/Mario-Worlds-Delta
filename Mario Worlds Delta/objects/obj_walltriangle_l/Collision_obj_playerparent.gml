//Make the player able to run up the wall

//If the player is not riding anything
if (global.mount == 0) {

    //If the player meets the following conditions
    if (other.state == statetype.walk)
    && (other.crouch == 0)
    && (other.holding == 0)
    && (other.swimming == false) {
    
        //If the player is moving to the left
        if (other.hspeed < (other.hspeed_run-0.5)*-1)
        && (position_meeting(x-8, y-8, obj_solid)) {
        
            with (instance_create(x+15, y, obj_player_wallrunning)) {
            
                angle = 135;
                xscale = -1;
            }
        }
    }
}

