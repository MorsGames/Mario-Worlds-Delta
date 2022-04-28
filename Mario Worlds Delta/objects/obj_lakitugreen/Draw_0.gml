/// @description Draw the Lakitu

//Cloud
draw_sprite_ext(spr_lakitu_cloud, cloud_index, round(x), round(y) + 4, 1, 1, 0, c_white, 1);

//Lakitu
draw_sprite_ext(sprite_index, image_index, round(x), round(y), xscale, 1, 0, c_white, 1);

//Cloud front
draw_sprite_ext(spr_lakitu_cloud_front, type, round(x), round(y) + 10, 1, 1, 0, c_white, 1);

