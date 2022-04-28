/// @description Dismount from Yoshi

//If Yoshi is being ridden
if (state == yoshistate.ridden) {

    //Set up the state
    state = yoshistate.idle;
    
    //Stop licking
    licking = 0;
    anim = 0;
    
    //With the player
    if (instance_exists(obj_playerparent)) {
    
        //Hereby horizontal speed from the player
        hspeed = obj_playerparent.hspeed/2;
        
        //Hereby facing direction from the player
        xscale = obj_playerparent.xscale;
                
        //Make the player visible and able to hold stuff
        with (obj_playerparent) {
        
            visible = true;
            holding = 0;
        }
    }
    
    //Set animation
    image_index = 1;
    alarm[6] = 16;
    
    //Allow ride
    rideme = 0;
    alarm[0] = 16;
    
    //Stop mounting
    global.mount = 0;
}

