/// @description Dead enemy logic

//Update angle
angle -= 10*sign(hspeed)

//Cap vertical speed
if (swimming == 1) {

    gravity = 0.05;
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

//Destroy when outside the room
if (bbox_top > room_height)
    instance_destroy();

