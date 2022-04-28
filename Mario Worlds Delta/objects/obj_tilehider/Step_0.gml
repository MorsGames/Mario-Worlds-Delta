/// @description Tile layer hider logic

//If alpha is not equal to target alpha
if (tile_alpha != tile_target_alpha) {

    //Fade gradually until the alpha hits the target alpha.
    if (tile_alpha < tile_target_alpha) 
        tile_alpha = min(tile_alpha + 0.05, tile_target_alpha);
    else 
        tile_alpha -= 0.05;

    //Fade the tiles set on the target depth.
    var tiles = tile_get_ids_at_depth(target_depth);
    for (var i = 0; i < array_length_1d(tiles); i++) {
    
        if (point_in_rectangle(tile_get_x(tiles[i]), tile_get_y(tiles[i]), bbox_left, bbox_top, bbox_right, bbox_bottom))
            tile_set_alpha(tiles[i], tile_alpha);
    }
}

//Collision with the player object
if (!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_playerparent,0,0))
    tile_target_alpha = 1;
else
    tile_target_alpha = 0;

