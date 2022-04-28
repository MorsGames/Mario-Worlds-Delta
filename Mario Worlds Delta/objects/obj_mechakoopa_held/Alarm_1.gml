/// @description Turn into a mechakoopa

//If there's gravity
if (gravity > 0) {

    alarm[1] = 1;
    exit;
}

//Otherwise, return to normal
else {

    //Switch between sprite
    with (instance_create(x, y, returnobj)) {
    
        vspeed = -3;
    }
    
    //Destroy
    instance_destroy();
}

