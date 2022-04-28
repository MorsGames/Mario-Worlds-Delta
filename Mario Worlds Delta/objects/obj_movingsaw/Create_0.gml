/// @description Track Sawblade Engine

//Default value
down = false;

//Animate
image_speed = 0.3;

//State
state = "IN_LINE";

//Speed
spd = 1.5;

//Origin
xorig = sprite_width/2-1;
yorig = sprite_height/2-1;

//Steps to take per steps
step = 0;

//Whether this engine has a rope
myblade = noone;

//Whether the engine jumped from a track
ready = 0;

//Direction
direct = 270;

//Create a blade
alarm[1] = 2;

//Play 'Engine' sound
alarm[2] = 7;

//Smoke position
post = 0;

//Set up direction based on modifier
if (place_meeting(x, y, obj_up)) {

    direct = 90;
    state = "IN_LINE";
}
else if (place_meeting(x, y, obj_down)) {

    direct = 270;
    state = "IN_LINE";
}
else if (place_meeting(x, y, obj_left)) {

    direct = 180;
    state = "IN_LINE";
}
else if (place_meeting(x, y, obj_right)) {

    direct = 0;
    state = "IN_LINE";
}

