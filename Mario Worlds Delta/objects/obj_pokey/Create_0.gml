/// @description Pokey

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 3;

//How vulnerable is this enemy to the player
stomp = 1;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = spr_pokey_dead;

//Animate
image_speed = 0.15;

//Start moving
alarm[10] = 2;

//Remember enemies below.
if (position_meeting(x, bbox_bottom+8, obj_pokey)) {

    mebelow = collision_point(x, bbox_bottom+8, obj_pokey, 0, 0);
    alarm[0] = 10;
}
 
//If there's not enemies below, note that and start walking towards mario.
else {

    mebelow = noone;
    alarm[10] = 2;
}

//Top
a = 1;
alarm[9] = 2;

//Offset values
offset = 0;
offsetnext = 0;
offsetxscale = 1;

//Update sprite
if (obj_levelcontrol.inisection == "Snow") {

    //Set the sprite
    sprite_index = spr_pokey_snow;
    
    //How vulnerable is this enemy to items
    vulnerable = 2;
    
    //How vulnerable is this enemy to the player
    stomp = 4;
    
    //How vulnerable is this enemy to Yoshi
    edible = 0;
    
    //Death Sprite
    deathsprite = spr_pokey_snow_dead;
}

