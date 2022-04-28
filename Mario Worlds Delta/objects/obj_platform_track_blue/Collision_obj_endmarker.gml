/// @description Stop if moving

if (speed > 0) {

    //Snap into grid
    move_snap(16, 16);
    
    //Stop
    speed = 0;
    
    //Resume movement
    alarm[10] = 60;
}

