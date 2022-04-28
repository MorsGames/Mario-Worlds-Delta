/// @description Star logic

//Inherit event from parent object
event_inherited();

//Animate
image_speed = 0.5;

//If the item does not have permission
if (permission == 0) {

    //If there's no gravity, move down
    if (gravity == 0) {
    
        //Grant permission to move
        permission = 1;
    
        //If the player does not exist or is at the left
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x)
            hspeed = -0.5;
        else
            hspeed = 0.5;
    }
}

//Bounce
if (gravity == 0) {

    //If the item is underwater
    if (swimming == false)
        vspeed = -4;
        
    //Otherwise, make a little bounce
    else
        vspeed = -2;
}

