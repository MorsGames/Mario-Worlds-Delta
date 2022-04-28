/// @description Blue Platform

//Be solid if the switch is off
if (global.onoff_block == 1) {

    mysolid = instance_create(x,y,obj_solid)
    image_speed = 0;
    image_index = 0;
}

//Otherwise, be an outline
else {

    image_speed = 0.1;
    image_index = 1;
}

