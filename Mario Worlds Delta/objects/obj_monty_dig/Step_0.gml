/// @description Start digging if the player is nearby

//If the player does exists
if (instance_exists(obj_playerparent)) {

    //If the object is not visible and the player is nearby
    if (!visible)
    && (obj_playerparent.x > x-96)
    && (obj_playerparent.x < x+96) {
    
        //Make it visible
        visible = 1;
        
        //Make a monty appear out of the hole
        alarm[0] = 80;
    }
}

