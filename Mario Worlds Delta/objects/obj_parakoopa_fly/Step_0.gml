/// @description Flying parakoopa logic

//Set facing direction
xscale = 1*sign(hspeed);

//Enemy collision
event_user(2);

//Wave
if (y > ystart)
    vspeed -= 0.025;
else if (y < ystart)
    vspeed += 0.025;

