/// @description Draw Disco ball

if (mylight == noone)
    draw_sprite_ext(spr_discoball, image_index, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + 48, 1, 1, 0, c_white, 1);
else
    draw_sprite_ext(spr_discoball_active, image_index, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ) + 48, 1, 1, 0, c_white, 1);

