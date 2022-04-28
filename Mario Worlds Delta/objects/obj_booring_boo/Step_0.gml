/// @description Ring Boo Logic

//Y movement
y = ystart + sin((clockwise * timer) * ringspeed) * ringsize;
x = xstart + cos((clockwise * timer) * ringspeed) * ringsize;
timer ++;

//Reset timer movement back to 0 if end has been reached
if (timer) >= ((2 * pi) / ringspeed)
    timer = 0;

//Animation
animframe += 0.125;
if (animframe >= 2)
    animframe = 0;
image_index = animframe + (type * 2);

