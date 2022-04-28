/// @description Look towards the player

//If not moving, check player position
if (ready == 0) {

    //If the player does not exist
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.y < y)
        image_index = 0;
        
    //Otherwise
    else {
    
        //If the player is 64 pixels nearby, set peekin' pose
        if (obj_playerparent.x > bbox_left-64)
        && (obj_playerparent.x < bbox_right+64)
            image_index = 1;
        else
            image_index = 0;
    }
}

//Otherwise, if moving
else {

    //If moving up
    if (ready == 3)
        image_index = 0;
        
    //Otherwise, if falling down
    else {
    
        if (owo < 2)
            image_index = 2;
        else
            image_index = 3;
    }
}

//If the player does not exist or it does exist and it is at the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

