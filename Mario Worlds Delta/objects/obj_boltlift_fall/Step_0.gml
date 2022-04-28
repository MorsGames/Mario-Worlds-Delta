/// @description Falling bolt lift logic

//Cap vertical speed
if (vspeed > 4) {

    vspeed = 4;
    gravity = 0;
}

//Destroy
if (bbox_top > room_height+32)
    instance_destroy();

