/// @description Draw the shell

//If the shell is small
if (sprite_height < 17) {
    
    if (flip == 0) {
    
        //Draw shell
        draw_sprite_ext(sprite_index, image_index, round(x)+offset, round(y)+1, image_xscale, 1, 0, c_white, 1);
        
        //If there's a koopa inside
        if (koopainside == 1)
            draw_sprite_ext(spr_koopa_inside, image_index, round(x)+offset, round(y)+1, image_xscale, 1, 0, c_white, 1);
    }
    else {
    
        //Draw shell
        draw_sprite_ext(sprite_index, image_index, round(x)+offset, round(y)+17, image_xscale, -1, 0, c_white, 1);
        
        //If there's a koopa inside
        if (koopainside == 1)
            draw_sprite_ext(spr_koopa_inside, image_index, round(x)+offset, round(y)+17, image_xscale, -1, 0, c_white, 1);
    }
}

//Otherwise
else {
    
    if (flip == 0) {
    
        //Draw shell
        draw_sprite_ext(sprite_index, image_index, round(x)+offset, round(y)+1, image_xscale, 1, 0, c_white, 1);
        
        //If there's a koopa inside
        if (koopainside == 1)
            draw_sprite_ext(spr_koopa_inside_big, image_index, round(x)+offset, round(y)+1, image_xscale, 1, 0, c_white, 1);
    }
    else {
    
        //Draw shell
        draw_sprite_ext(sprite_index, image_index, round(x)+offset, round(y)+1, image_xscale, -1, 0, c_white, 1);
        
        //If there's a koopa inside
        if (koopainside == 1)
            draw_sprite_ext(spr_koopa_inside_big, image_index, round(x)+offset, round(y)+1, image_xscale, -1, 0, c_white, 1);
    }    
}

