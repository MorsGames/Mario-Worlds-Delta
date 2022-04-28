/// @description Create dead enemy parts.

//Create dead object.
imdead = instance_create(x, y, obj_enemy_dead);

//Set the sprite
imdead.sprite_index = sprite_index;

//Set the facing direction
imdead.image_xscale = xscale;

//Set the vertical speed
imdead.vspeed = spd;

//Set the horizontal speed.
imdead.hspeed = 0.5;
imdead.alarm[0] = 4;

//No spin
imdead.nospin = 1;

//Decrement count and destroy.
count--;
if (count > 0)
    alarm[0] = 8;
else
    instance_destroy();

