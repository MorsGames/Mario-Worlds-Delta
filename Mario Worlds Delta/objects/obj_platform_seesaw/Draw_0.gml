/// @description Render seesaw

draw_sprite_ext(sprite_index, 0, x, y, 1, 1, image_angle, c_white, 1);

//Render gear 
if (!place_meeting(x,y,obj_movingseesaw))
    draw_sprite_ext(sprite_index, 1, x, y+4, 1, 1, 0, c_white, 1);

