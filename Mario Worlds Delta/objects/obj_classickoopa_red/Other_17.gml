/// @description Turn into a koopa shell and flip it

//Create dead enemy object
imdead = instance_create(round(bbox_left+bbox_right)/2, y-2, obj_shell);

//Set up the sprite
imdead.sprite_index = spr_shell_classic_red;

//Set up the xscale
imdead.image_xscale = 1;

//Flip it
imdead.flip = 1;

//Do not hold a koopa inside
imdead.koopainside = -1;

//If the object is not colliding with yoshi's tongue
if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_tongue, 0, 0)) {
    
    //Set up vertical speed
    if (!swimming) {
    
        imdead.vspeed = -5;
    }
    else {
    
        imdead.vspeed = -3;
    }
    
    //If the killer object is at the left of this object, move to the right
    if ((other.bbox_left+other.bbox_right/2) <= bbox_left+bbox_right/2) 
        imdead.hspeed = 0.5;
        
    //Otherwise, move to the left
    else if ((other.bbox_left+other.bbox_right/2) > bbox_left+bbox_right/2) 
        imdead.hspeed = -0.5;
}

//Destroy
instance_destroy();

