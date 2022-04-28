/// @description Turn into a stunned bob-omb

//Create dead enemy object
imdead = instance_create(round(bbox_left+bbox_right)/2, y-2, obj_bobomb_held);

//Set up the xscale
imdead.dir = xscale;

//If the object is not colliding with yoshi's tongue
if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_tongue, 0, 0)) {
    
    //Set up vertical speed
    imdead.vspeed = -5;
    
    //If the killer object is at the left of this object, move to the right
    if ((other.bbox_left+other.bbox_right/2) <= bbox_left+bbox_right/2) 
        imdead.hspeed = 0.5;
        
    //Otherwise, move to the left
    else if ((other.bbox_left+other.bbox_right/2) > bbox_left+bbox_right/2) 
        imdead.hspeed = -0.5;
}

//Destroy
instance_destroy();

