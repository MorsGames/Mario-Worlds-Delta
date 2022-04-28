/// @description Create lights if needed and set default height

//Set height
hh = sprite_height-1;

//If the light exists
if (instance_exists(obj_levelcontrol)) {

    //Create top light
    with (instance_create(x, y, obj_light_static)) {
    
        //Set light sprite
        sprite_index = spr_light_lava_top;
        
        //Set light scale
        image_xscale = other.image_xscale;
        image_yscale = 1;
        
        //Set blend mode
        if (other.sprite_index == spr_lava)
            image_blend = c_orange;
        else
            image_blend = make_colour_rgb(223, 125, 255);
    }
    
    //Create bottom light
    with (instance_create(x, y+16, obj_light_static)) {
    
        //Set light sprite
        sprite_index = spr_light_lava_bottom;
        
        //Set light scale
        image_xscale = other.image_xscale;
        image_yscale = (other.hh)-16;
        
        //Set blend mode
        if (other.sprite_index == spr_lava)
            image_blend = c_orange;
        else
            image_blend = make_colour_rgb(223, 125, 255);
    }
}

//Set y scale
if (image_yscale > 1)
    image_yscale = 1;

