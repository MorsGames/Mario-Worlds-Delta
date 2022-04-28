/// @description Wiggler kill

//Create dead object.
imdead = instance_create(x, y, obj_enemy_dead);

//Set the sprite
imdead.sprite_index = sprite_index;

//Set the facing direction
imdead.image_xscale = xscale;

//Set a waving movement
imdead.hspeed = 0.5;
imdead.alarm[0] = 4;

//Set the vertical speed
imdead.vspeed = -6;

//Do not spin
imdead.nospin = 1;

//Dead followers.
multidead = instance_create(x, y, obj_enemy_multidead);
with (multidead) {

    //Set the enemy parts.
    count = 4;
    
    //Set the xscale
    xscale = other.xscale;
    
    //Set the sprite
    if (other.sprite_index == spr_wiggler)
        sprite_index = spr_wiggler_body;
    else
        sprite_index = spr_wiggler_mad_body;
}

//Destroy
instance_destroy();

