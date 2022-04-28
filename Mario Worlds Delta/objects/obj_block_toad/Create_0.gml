/// @description Toad Platform

//Do not animate
image_speed = 0;

//Be solid if Toad is being controlled
if (global.player == 2) {

    mysolid = instance_create(x,y,obj_solid)
    image_index = 0;
}

//Otherwise, be an outline
else {

    mysolid = noone;
    image_index = 1;
}

