/// @description Deals with parallax backgrounds.

//If the autoscroll object does not exist
if (instance_number(obj_controller_autoscroll) == 0) {

    //Draw background
    if (__background_get( e__BG.Height, 0 ) < room_height)
    && (__background_get( e__BG.Height, 0 ) > __view_get( e__VW.HView, 0 ))
        draw_background_tiled_horizontal_ext(__background_get( e__BG.Index, 0 ), round(__view_get( e__VW.XView, 0 )/2+(__background_get( e__BG.X, 0 )+__background_get( e__BG.HSpeed, 0 ))), __background_get( e__BG.Y, 0 )+(__view_get( e__VW.YView, 0 )*(room_height-__background_get( e__BG.Height, 0 ))/(room_height-__view_get( e__VW.HView, 0 ))), 1, 1, 0, __background_get( e__BG.Blend, 0 ), __background_get( e__BG.Alpha, 0 ));
    else
        draw_background_tiled_horizontal_ext(__background_get( e__BG.Index, 0 ), round(__view_get( e__VW.XView, 0 )/2+(__background_get( e__BG.X, 0 )+__background_get( e__BG.HSpeed, 0 ))), __background_get( e__BG.Y, 0 ), 1, 1, 0, __background_get( e__BG.Blend, 0 ), __background_get( e__BG.Alpha, 0 ));
}

//Otherwise, if it exists
else {

    //Draw background
    if (__background_get( e__BG.Height, 0 ) < room_height)
    && (__background_get( e__BG.Height, 0 ) > __view_get( e__VW.HView, 0 ))
        draw_background_tiled_horizontal_ext(__background_get( e__BG.Index, 0 ), __view_get( e__VW.XView, 0 )+pos, __background_get( e__BG.Y, 0 )+(__view_get( e__VW.YView, 0 )*(room_height-__background_get( e__BG.Height, 0 ))/(room_height-__view_get( e__VW.HView, 0 ))), 1, 1, 0, __background_get( e__BG.Blend, 0 ), __background_get( e__BG.Alpha, 0 ));
    else
        draw_background_tiled_horizontal_ext(__background_get( e__BG.Index, 0 ), __view_get( e__VW.XView, 0 )+pos, __background_get( e__BG.Y, 0 ), 1, 1, 0, __background_get( e__BG.Blend, 0 ), __background_get( e__BG.Alpha, 0 ));
}

//Draw pit marker
draw_background_ext(bgr_pit, 0, room_height-32, room_width/16, 1, 0, __background_get( e__BG.Blend, 0 ), 1);

