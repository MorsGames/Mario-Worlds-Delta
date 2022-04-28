/// @description Generate smoke

//If it is moving first of all
if (hspeed <> 0)
{
    //If sliding or kicking
    if (slide) || (kicky > 1) {
    
        //Generate smoke effect
        with (instance_create(x-8*xscale, bbox_bottom, obj_smoke)) {
        
            sprite_index = spr_smoke;
            image_speed = 0.15;
        }
    }
}

//Repeat the process
alarm[1] = 8;

