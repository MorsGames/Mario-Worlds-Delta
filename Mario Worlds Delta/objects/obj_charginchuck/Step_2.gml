/// @description Update death sprite and break blocks on the way

//If the chargin chuck is walking or jumping
if (sprite_index == spr_charginchuck_walk)
|| (sprite_index == spr_charginchuck_jump) {

    //Check for a block to the left
    var block = collision_rectangle(bbox_left-6, bbox_top+4, bbox_right+6, bbox_bottom-1, obj_blockparent, 0, 0);
    if (block)
        with (block) event_user(15);
}

//Update death sprite
deathsprite = sprite_index;

//Update stomp sprite
stompsprite = sprite_index;

