/// @description Guess Minigame Question Mark Block

//Default variables
parent = noone;
numb = 0;

//Animate
image_speed = 0.15;

//Whether this block can be hit
ready = 0;

//Set the position
x = choose(xstart, xstart+48, xstart+96);
if (place_meeting(x,y,obj_guessblock)) {

    alarm[11] = 1;
}

//Make it solid
mysolid = instance_create(x,y,obj_solid);

