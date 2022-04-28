/// @description Draw it

//Draw the circle
draw_set_circle_precision(64);
draw_circle_colour(x-__view_get( e__VW.XView, view_current )-1, y-__view_get( e__VW.YView, view_current ), 8, image_blend, image_blend, false);

//Begin primitive
draw_primitive_begin(pr_trianglefan);

//Draw vertexs
draw_vertex(x-__view_get( e__VW.XView, view_current )-8, y-__view_get( e__VW.YView, view_current ));
draw_vertex(x-__view_get( e__VW.XView, view_current )-92-xx, y-__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+32);
draw_vertex(x-__view_get( e__VW.XView, view_current )+91-xx, y-__view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+32);
draw_vertex(x-__view_get( e__VW.XView, view_current )+8, y-__view_get( e__VW.YView, view_current ));

//End primitive
draw_primitive_end();

