/// @description Draw the door and door frame

//Castle door
if (doortype = 0) {
    draw_sprite(spr_castledoor, 0, x+8, y+d_y);
    draw_sprite(spr_castledoor_frame, 0, x, y);
}

//Ghost house door
if (doortype = 1)
    draw_sprite(spr_ghosthousedoor, f, x-3, y);
    
if (doortype = 2)
    draw_sprite(spr_noyoshi, 0, x, y);

