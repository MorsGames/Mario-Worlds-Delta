/// @description Fade in / out

//Set the alpha of the front goal gate
obj_goal_gate_front.alpha = image_alpha;

//Repeat the process
alarm[0] = 1;

//Fade in
if (fade == 0) {

    //Fade the screen black
    image_alpha += 0.00625;
    if (image_alpha > 1) {
    
        image_alpha = 1;
        fade = 1;
    }
    
    //Fade tides if it exists
    if (instance_exists(obj_water_tides)) {
    
        with (obj_water_tides) {
        
            image_alpha -= 0.00625;
            if (variable_instance_exists(id, "alpha"))
                alpha -= (alphaval/100)
        }
    }
    
    //Fade smog if if exists
    if (instance_exists(obj_rainmaker))
        with (obj_rainmaker) alpha -= 0.00625;
}

//Fade out
else if (fade == 2) {

    //Unfade the screen
    image_alpha -= 0.0125;
    if (image_alpha < 0) {
    
        image_alpha = 0;
        instance_destroy();
    }
    
    //Unfade tides
    if (instance_exists(obj_water_tides)) {
    
        with (obj_water_tides) {
        
            image_alpha += 0.0125;
            if (variable_instance_exists(id, "alpha"))
                alpha += (alphaval/50);
        }
    }
    
    //Fade smog if if exists
    if (instance_exists(obj_rainmaker))
        with (obj_rainmaker) alpha += 0.0125;
}

//Fade tiles on depth -6
var tiles = tile_get_ids_at_depth(-6);
for (var i = 0; i < array_length_1d(tiles); i++) {

    if (tile_exists(tiles[i]))
        tile_set_blend(tiles[i], merge_colour(c_white, c_black, image_alpha));
}

