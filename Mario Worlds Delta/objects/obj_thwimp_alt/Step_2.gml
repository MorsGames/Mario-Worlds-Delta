/// @description Look towards the player

//If moving up
if (ready == 0)
|| (ready == 3)
    image_index = 0;
    
//Otherwise, if falling down
else {

    if (owo < 2)
        image_index = 0;
    else
        image_index = 1;
}

//If the player does not exist or it does exist and it is at the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

