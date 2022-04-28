/// @description Flying blue parakoopa logic

//Handle parakoopa position
x = xstart+40*cos(angle*pi/180);
y = ystart+40*sin(angle*pi/180);

//Disc angle
angle += 1*sign(dir);
if (angle > 360)
    angle -= 360;

