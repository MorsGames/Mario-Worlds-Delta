/// @description Draw Boss

if (state == 1 || state == 2) //Render character in an arbitrary axis for proper squish animation
draw_sprite_stretched_origin(sprite_index, image_index, 0, -16, xscale, yscale);
else //Otherwise...
draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1+ps_y, xscale, yscale, angle, c_white, 1);

