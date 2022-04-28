/// @description Green Spiny Egg Logic

//Inherit event
event_inherited();

//Bounce
if (gravity == 0) {

    //Set horizontal speed
    if (abs(hspeed) > 1) {
    
        if (hspeed > 0)
            hspeed = 1;
        else
            hspeed = -1;
    }
}

//Destroy when outside the view
if (outside_view(16))
    instance_destroy();

