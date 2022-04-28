/// @description Moving Pipe

//Do not animate
image_speed = 0;
image_index = 0;

//Start moving
alarm[0] = 120;

//Top (For enemies)
top = instance_create(x, y, obj_semisolid);
    with (top) image_xscale = 2;

//Left boundary solid
ls = instance_create(x, y+2, obj_solid);
    with (ls) image_xscale = 0.125;

//Right boundary solid
rs = instance_create(x+30, y+2, obj_solid);
    with (rs) image_xscale = 0.125;

