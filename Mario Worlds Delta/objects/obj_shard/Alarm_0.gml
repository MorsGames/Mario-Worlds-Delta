/// @description Check shard sprite and flash if required

//Switch sprite
switch (sprite_index) {

    //Egg
    case (spr_egg_shard):
        image_speed = 0; break;
        
    //Q-Block, Brick, Flip Brick
    case (spr_qblock):
    case (spr_brick):
    case (spr_brick_flip): {
    
        image_speed = 0.15;
        image_index = 0;
    } break;
    
    //Blue Brick
    case (spr_shard_blue): {
    
        //Animate
        image_speed = 0.15;
        
        //Repeat
        alarm[0] = 4;
        
        //Replace colour
        isflashing++;
        if (isflashing > (pal_swap_get_pal_count(spr_palette_brick_blue)-1))
            isflashing = 0;
    } break;
    
    //Default
    default: image_speed = 0.15;
}

