/// @description Luigi Platform

//Do not animate
image_speed = 0;

//Become solid if Luigi is being controlled
if (global.player == 1) {

    mysolid = instance_create(x,y,obj_solid)
    image_index = 0;
}

//Otherwise, be an outline
else {

    mysolid = noone;
    image_index = 1;
}

