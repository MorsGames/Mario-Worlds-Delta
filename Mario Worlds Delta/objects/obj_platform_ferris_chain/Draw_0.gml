/// @description Draw chains

for (i=1; i<(dist/16); i++)
    draw_sprite_ext(spr_ferris_chain, 0, xstart+8+lengthdir_x(i*16, point_direction(xstart+8, ystart, x, y)), ystart-8+lengthdir_y(i*16, point_direction(xstart, ystart-8, x, y)), 1, 1, 0, c_white, 1);

