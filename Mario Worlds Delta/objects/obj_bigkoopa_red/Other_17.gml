/// @description Turn into a koopa shell and flip it

//Create dead enemy object
imdead = instance_create(round(bbox_left+bbox_right)/2, y-2, obj_shell);

//Set up the sprite
imdead.sprite_index = spr_shell_big_red;

//Set up the xscale
imdead.image_xscale = 1;

//Set up vertical speed
if (!swimming) {

    imdead.vspeed = -5;
}
else {

    imdead.vspeed = -3;
}

//Flip it
imdead.flip = 1;

//Hold a koopa inside
imdead.koopainside = 1;

//If the killer object is at the left of this object, move to the right
if ((other.bbox_left+other.bbox_right/2) <= bbox_left+bbox_right/2) 
    imdead.hspeed = 0.5;
    
//Otherwise, move to the left
else if ((other.bbox_left+other.bbox_right/2) > bbox_left+bbox_right/2) 
    imdead.hspeed = -0.5;

//Destroy
instance_destroy();

