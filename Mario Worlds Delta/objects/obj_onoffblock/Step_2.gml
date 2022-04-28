/// @description Change sprite

//Set up the colour of the light
with (light) {

    //Check sprite
    switch (other.sprite_index) {
    
        //ON
        case (spr_onoffblock_on): image_blend = make_colour_rgb(254, 5, 5); break;
                
        //OFF
        case (spr_onoffblock_off): image_blend = make_colour_rgb(5, 152, 239); break;
    }
}

//Set up the sprite of the block
if (global.onoff_block == 0)
    sprite_index = spr_onoffblock_on;
else
    sprite_index = spr_onoffblock_off;

