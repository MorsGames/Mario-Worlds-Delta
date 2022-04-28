/// @description Modifies the item inside this block

if (sprout == itemtype.coin) {

    //Obtain ID from modifier
    sprout = other.item_id;
    
    //Destroy modifier
    with (other) instance_destroy();
}

