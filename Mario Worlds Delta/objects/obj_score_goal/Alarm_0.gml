/// @description Set frame

alarm[0] = 4;
if (frame < 3)
    frame++;
else
    instance_destroy();

