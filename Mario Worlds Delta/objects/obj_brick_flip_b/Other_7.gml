/// @description Turn into a non-spinning block

//If the block ended rotating and the player is not in place
if (spins == 0)
&& (!place_meeting(x, y, obj_playerparent)) {

    //Switch between sprites
    switch (sprite_index) {

        //Big
        case (spr_brick_flip_big): instance_create(x, y, obj_brick_flip_big); break;

        //Default
        default: instance_create(x, y, obj_brick_flip); break;
    }
    
    //Destroy
    instance_destroy();
}

//Otherwise, keep spinning
else if (spins > 0)
    spins--;

