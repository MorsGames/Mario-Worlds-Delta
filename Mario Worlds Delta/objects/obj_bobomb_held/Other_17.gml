/// @description Turn into a stunned galoomba

//Create dead enemy object
imdead = instance_create(round(bbox_left+bbox_right)/2, y-2, obj_bobomb_held);

//Set up sprite
if (sprite_index == spr_bobomb_cannon)
|| (sprite_index == spr_bobomb_cannon_th) {

    imdead.sprite_index = spr_bobomb_cannon;
    imdead.image_speed = 0;
    imdead.image_index = 0;
}
else
imdead.sprite_index = sprite_index;

//Hereby death sprite
imdead.deathsprite = deathsprite;

//Set up the xscale
imdead.dir = xscale;

//Set up vertical speed
imdead.vspeed = -5;

//If the killer object is at the left of this object, move to the right
if ((other.bbox_left+other.bbox_right/2) <= bbox_left+bbox_right/2) 
    imdead.hspeed = 0.5;
    
//Otherwise, move to the left
else if ((other.bbox_left+other.bbox_right/2) > bbox_left+bbox_right/2) 
    imdead.hspeed = -0.5;

//Destroy
instance_destroy();

