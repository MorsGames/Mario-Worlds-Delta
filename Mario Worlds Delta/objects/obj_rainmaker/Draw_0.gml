/// @description Draw clouds or smog if required

//Clouds
if (smog == 1)
    draw_background_tiled_horizontal_ext(fgr_clouds, round(__view_get( e__VW.XView, 0 )/2+pos*2), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, alpha/4);

//Smog
else if (smog == 2) {

    //Set blending mode
    draw_set_blend_mode(bm_add);
    
    //Draw the background
    if (background_get_height(fgr_smog) < room_height)
    && (background_get_height(fgr_smog) > __view_get( e__VW.HView, 0 ))
        draw_background_tiled_horizontal_ext(fgr_smog, round(__view_get( e__VW.XView, 0 )/2+pos), y+__view_get( e__VW.YView, 0 )*(room_height-__background_get( e__BG.Height, 0 ))/(room_height-__view_get( e__VW.HView, 0 )), 1, 1, 0, c_white, alpha);
    else
        draw_background_tiled_horizontal_ext(fgr_smog, round(__view_get( e__VW.XView, 0 )/2+pos), y, 1, 1, 0, c_white, alpha);
        
    //Set blending mode to normal
    draw_set_blend_mode(bm_normal);
}

