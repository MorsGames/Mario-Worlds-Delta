/// @description Handle position

//Keep scale always at 1
image_xscale = room_width/16;
image_yscale = 1;

//If the NPC does not exist
if (!instance_exists(target)) {

    instance_destroy();
    exit;
}

//Otherwise, if it exists, move towards it.
else if (instance_exists(target)) {

    x = target.x;
    y = target.y;
}

