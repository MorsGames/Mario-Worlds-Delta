/// @description Draw the Mario Start! screen

//Draw black in the back
draw_clear(c_black);

//Draw the text
if (global.bonusgame == 0)
    draw_sprite(spr_mariostart, global.player, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 )+112);
else
    draw_sprite(spr_mariostart, 4, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 )+112);

