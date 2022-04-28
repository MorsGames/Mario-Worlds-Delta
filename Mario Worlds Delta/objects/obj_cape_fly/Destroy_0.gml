/// @description Make player visible

//If the player exists
if (instance_exists(obj_playerparent)) {
    
    //Make player able to fly
    obj_playerparent.flying = 0;
    
    //Make the player stop jumping
    obj_playerparent.jumping = 0;
    
    //Set vertical speed
    obj_playerparent.vspeed = vspeed;
    
    //If the object is not smashing the ground
    if (smash == 0)
    
        obj_playerparent.hspeed = hspeed;
        
    else
    
        obj_playerparent.hspeed = hspeed/2;
}

