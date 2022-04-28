/// @description Create a empty block

with (instance_create(xstart, ystart, obj_emptyblock)) {

    sprite_index = spr_qblock_big_empty;
    if (other.sprout == itemtype.lifeup) {
    
        alarm[0] = 72;
        alarm[1] = 144;
    }
}

//Destroy
instance_destroy();

