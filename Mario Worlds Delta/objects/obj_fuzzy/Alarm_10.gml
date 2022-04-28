/// @description Start moving

//If the player does not exist or it's at the left.
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x) {

    direct = 180;
    state = "IN_LINE";
}
else {

    direct = 0;
    state = "IN_LINE";
}

