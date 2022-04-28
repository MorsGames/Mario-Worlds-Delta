/// @description Hold a torpedo, then launch it.

//If the player does not exist, deny event
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Ready to launch
ready = 1;

//Set the facing direction
if (obj_playerparent.x > x+16)
    gx = 1;
else
    gx = -1;

