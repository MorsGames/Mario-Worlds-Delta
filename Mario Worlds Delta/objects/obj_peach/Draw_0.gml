/// @description Draw Peach

//Update stun animation
stun_anim += 0.5;

//Set up palette
player_set_palette(id);
    
//Draw the player
draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1+offset, xscale, 1, angle, c_white, image_alpha);

//Draw stun
if (stun > 0) {

    draw_sprite_ext(spr_shake, stun_anim, x, y, 1, 1, 0, c_white, 1);
}

//Reset palette
pal_swap_reset();

