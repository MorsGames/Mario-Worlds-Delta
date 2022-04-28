/// @description Draw NPC

//Draw NPC
draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, xscale, 1, 0, c_white, 1);

//Draw Talk icon
if (player)
&& (varmsg != "No message was set") 
    draw_sprite_ext(spr_talk, image_index, round(x)-8, round(bbox_top-16), 1, 1, 0, c_white, 1);

