/// @description Jump

//Jump either left or right
switch (ready) {

    //Left
    case (0): {
    
        hspeed = 1.05;
        ready = 1;
    } break;
    
    //Right
    case (1): {
    
        hspeed = -1.05;
        ready = 0;
    } break;
}

//Boost jump
y--;

//Jump
jumping = 1;

//Sets the vertical speed.
vspeed = -6;

