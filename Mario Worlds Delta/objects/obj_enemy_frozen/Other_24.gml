/// @description Select a appropiate ice sprite

//Prevent frozen enemies from spawning inside solids
if (!collision_rectangle(bbox_right, bbox_top, bbox_right, bbox_bottom, obj_solid, 1, 0)) {

    while (collision_rectangle(bbox_left, bbox_top, bbox_left, bbox_bottom, obj_solid, 1, 0))
        x++;
}
else if (!collision_rectangle(bbox_left, bbox_top, bbox_left, bbox_bottom, obj_solid, 1, 0)) {

    while (collision_rectangle(bbox_right, bbox_top, bbox_right, bbox_bottom, obj_solid, 1, 0))
        x--;
}
else if (!collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_solid, 1, 0)) {

    while (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0))
        y++;
}
else if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0)) {

    while (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_solid, 1, 0))
        y--;
}

//If the sprite if greater than 16x16, set a 32x32 block
if (bbox_bottom-bbox_top > 18)
&& (bbox_right-bbox_left > 18)
    sprite_index = spr_enemyice_32x32;
    
//Otherwise,  if the sprite height is greater than 16 pixels, set a 16x32 block
else if (bbox_bottom-bbox_top > 18)
    sprite_index = spr_enemyice_16x32;
    
//Otherwise,  if the sprite width is greater than 16 pixels, set a 32x16 block
else if (bbox_right-bbox_left > 18)
    sprite_index = spr_enemyice_32x16;
    
//Otherwise
else
    sprite_index = spr_enemyice;

