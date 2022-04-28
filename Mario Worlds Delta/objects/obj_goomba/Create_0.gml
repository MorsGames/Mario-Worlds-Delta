/// @description Goomba

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = spr_goomba_dead;

//Stomp sprite
stompsprite = spr_goomba_sq;

//Animate
image_speed = 0.15;

//Remember enemies below.
if (position_meeting(x, bbox_bottom+8, obj_goomba)) {

    mebelow = collision_point(x, bbox_bottom+8, obj_goomba, 0, 0);
    alarm[1] = 5;
}
 
//If there's not enemies below, note that and start walking towards mario.
else {

    mebelow = noone;
    alarm[10] = 2;
}

//Easter egg
owo = 0;
if (floor(random(1000) >= 998))
    owo = 1;

//Top
a = 1;
alarm[9] = 2;

//Offset values
offset = 0;
offsetnext = 0;
offsetxscale = 1;

