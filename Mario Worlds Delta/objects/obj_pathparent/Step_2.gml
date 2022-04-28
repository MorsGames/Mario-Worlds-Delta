/// @description Destroy tiles in position

if (image_alpha == 1) {

    //Temporary variables
    var tile_l, tile_r;
    
    //Find tile
    tile_l = tile_layer_find(14, bbox_left, y);
    tile_r = tile_layer_find(14, bbox_right, y);
    
    //Delete tile if found
    if (tile_exists(tile_l)) then tile_delete(tile_l);
    if (tile_exists(tile_r)) then tile_delete(tile_r);
}

