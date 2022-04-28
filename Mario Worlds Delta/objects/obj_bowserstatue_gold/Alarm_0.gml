/// @description Jump

//Animate
image_speed = 0;
image_index = 1;

//Set the vertical speed
vspeed = -4;

//Boost jump
y--;

//Jump
jumping = 1;

//If the player does not exist or it's at the left, jump to the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x) {

    hspeed = -1.035;
    xscale = -1;
}

//Otherwise, jump to the right
else if (obj_playerparent.x > x) {

    hspeed = 1.035;
    xscale = 1;
}

