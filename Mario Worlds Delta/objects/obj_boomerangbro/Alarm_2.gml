/// @description Jump

//If the boomerang bro is not throwing a boomerang
if (_throw == 0) {
    
    //Set vertical speed
    vspeed = -2.5;
    
    //Gravity
    gravity = 0.25;    
    
    //Boost jump
    y--;
}

//Jump again
alarm[2] = 168;

