/// @description Draw the spikeblock

//Draw the base
draw_sprite_part(sprite_index, image_index, 6, 6, 32, 32, round(x), round(y));

//If there's not a solid above
if (!place_meeting(x, y-1, obj_solid))
    draw_sprite_part(sprite_index, image_index, 0, 0, 44, 6, round(x)-6, round(y)-6);

//If there's not a solid below
if (!place_meeting(x, y+32, obj_solid))
    draw_sprite_part(sprite_index, image_index, 0, 38, 44, 6, round(x)-6, round(y)+32);
    
//If there's not a solid at the left
if (!place_meeting(x-1, y, obj_solid))
    draw_sprite_part(sprite_index, image_index, 0, 0, 6, 44, round(x)-6, round(y)-6);
    
//If there's not a solid at the right
if (!place_meeting(x+32, y, obj_solid))
    draw_sprite_part(sprite_index, image_index, 38, 0, 6, 44, round(x)+32, round(y)-6);

