/// @description Stomped enemy logic

//Cap vertical speed
if (swimming == 1) {

    gravity = 0.1;
    if (vspeed > 1)
        vspeed = 1;
}
else {

    gravity = 0.2;
    if (vspeed > 4)
        vspeed = 4;
}

//Water check
event_user(0);

//Destroy when outside
if (bbox_top > room_height)
    instance_destroy();

