/// @description Draw the muncher

//Draw it
draw_sprite(sprite_index, image_index, round(x), round(y));

//Update frame
frame += 0.075;

//Draw 'Omnom' if permitted
if (nom == 1)
&& (sprite_index != spr_coin)
    draw_sprite(spr_muncher_ee, frame, round(x)+8, round(y)-8);

