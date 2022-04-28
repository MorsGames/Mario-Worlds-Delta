/// @description Turn into a koopa shell and flip it

//If the object colliding is yoshi's tongue
if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_tongue, 0, 0)) {
    
    //Revert to default death event
    event_user(0);
    exit;
}

//Create dead enemy object
imdead = instance_create(round(bbox_left+bbox_right)/2, y-2, obj_shell);

//Set up the sprite
imdead.sprite_index = spr_shell_kamikaze;

//Set up the xscale
imdead.image_xscale = 1;

//Destroy
instance_destroy();

