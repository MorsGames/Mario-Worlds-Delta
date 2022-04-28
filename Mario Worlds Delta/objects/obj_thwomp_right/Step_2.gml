/// @description Look towards the player

//If not moving, check player position
if (ready == 0) {

    //If the player does not exist
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < bbox_right)
        image_index = 0;
        
    //Otherwise
    else {
    
        //If the player is pixels nearby, set peekin' pose
        if (obj_playerparent.x < bbox_right+192)
        && (obj_playerparent.x > bbox_right+128)
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
    else
        image_index = 2;
}

//Always look to the right
xscale = 1;

