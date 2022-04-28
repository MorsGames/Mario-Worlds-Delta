/// @description Draw the block

//Animate
if (swap != spr_star)
    anim = 0;
else
    anim += 0.5;

//Draw item
if (ready2 == 0) {

    if (swap != spr_star)
        draw_sprite(swap, 0, round(x)+8, round(y));
    else
        draw_sprite(swap, anim, round(x)+8, round(y));
}

//Draw block
draw_sprite(sprite_index, image_index, round(x), round(y));

