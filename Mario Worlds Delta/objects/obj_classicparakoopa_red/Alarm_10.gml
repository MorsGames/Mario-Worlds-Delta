/// @description Start moving

//Detect the player and walk towards him.
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.y < y) {

    dir = -1;
    xscale = -1;
}
else {

    dir = 1;
    xscale = 1;
}

