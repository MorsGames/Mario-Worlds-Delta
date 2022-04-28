/// @description Flying parakoopa logic

//If the parakoopa is moving to the right.
if (dir == 1) {
    
    //Cap horizontal speed.
    if (vspeed > 1)
        vspeed = 1;
        
    //Change direction.
    if (y > ystart+40)
        dir = -1;
}

//Otherwise, if the parakoopa is moving to the left.
else if (dir == -1) {

    //Cap horizontal speed.
    if (vspeed < -1)
        vspeed = -1;
        
    //Change direction.
    if (y < ystart-40)
        dir = 1;
}

//Increment / Decrement speed.
vspeed += 0.02*sign(dir);

//Set facing direction based on dir
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

