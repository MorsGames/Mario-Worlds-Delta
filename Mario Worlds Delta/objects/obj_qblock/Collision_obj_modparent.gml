/// @description Modifies the item inside this block

if (sprout == itemtype.coin) {

    //Obtain ID from modifier
    sprout = other.item_id;
    
    //Set the special coin block for luigi
    if (global.player == 1)
    && (sprout == itemtype.coin_multi) {
    
        instance_create(x, y, obj_qblock_scatter)
        instance_destroy();
    }
    
    //Destroy modifier
    with (other) instance_destroy();
}

