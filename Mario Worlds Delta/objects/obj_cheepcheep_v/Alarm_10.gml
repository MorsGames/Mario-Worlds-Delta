/// @description Start moving

//Set turning endpoint
if (prevswim == 0) {

    prevswim = 1;
    yy = y;
}

//Start moving
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.y < y)
    vspeed = -0.5;
else
    vspeed = 0.5;

