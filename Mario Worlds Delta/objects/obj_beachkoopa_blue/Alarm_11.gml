/// @description Begin sliding

//Deny if slipped from its shell
if (sprite_index == spr_beachkoopa_blue) then exit;

//Check for a slope
if (collision_rectangle(x, y+8, x, y+16, obj_slopeparent, 1, 0)) {

    //Set state
    slide = true;
    
    //Set sprite
    sprite_index = spr_beachkoopa_blue_slide;

    //Animate
    image_speed = 0;
    
    //Stop movement
    hspeed = 0;
}

