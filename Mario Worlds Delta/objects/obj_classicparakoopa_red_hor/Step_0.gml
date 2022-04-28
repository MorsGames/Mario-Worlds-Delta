/// @description Flying parakoopa logic

//If the parakoopa is moving to the right.
if (dir == 1) {
    
    //Cap horizontal speed.
    if (hspeed > 1)
    hspeed = 1;
        
    //Change direction.
    if (x > xstart+40)
        dir = -1;
}

//Otherwise, if the parakoopa is moving to the left.
else if (dir == -1) {

    //Cap horizontal speed.
    if (hspeed < -1)
    hspeed = -1;
        
    //Change direction.
    if (x < xstart-40)    
        dir = 1;
}

//Set facing direction
xscale = 1*sign(hspeed);

//Increment / Decrement speed.
hspeed += 0.02*sign(dir);

//Wave
if (y > ystart)
    vspeed -= 0.025;
else if (y < ystart)
    vspeed += 0.025;

