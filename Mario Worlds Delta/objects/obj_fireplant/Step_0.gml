/// @description Fire Piranha Plant logic

//If the player does not exist or it is above
if (instance_exists(obj_playerparent)) {

    //If the player is above
    if (obj_playerparent.y < y) {
    
        //If the player is at the left
        if (obj_playerparent.x > x) {
        
            direct = 45;
            xscale = 1;
        }
        
        //Otherwise, if the player is at the right
        else if (obj_playerparent.x < x) {
        
            direct = 135;
            xscale = -1;
        }
    }
    
    //Otherwise if the player is below
    else if (obj_playerparent.y > y) {
    
        //If the player is at the left
        if (obj_playerparent.x > x) {
        
            direct = 315;
            xscale = 1;
        }
        
        //Otherwise, if the player is at the right
        else if (obj_playerparent.x < x) {
        
            direct = 225;
            xscale = -1;
        }            
    }
}

//Switch index
if (direct == 45) || (direct == 135)
    image_index = 0;
else if (direct == 225) || (direct == 315)
    image_index = 2;

//Set spitting frame if there's fire
if (place_meeting(x, y, fire))
    image_index++;

