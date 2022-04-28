/// @description Update palette and light colour

//Update palette
palette++;

//Set light colour if it exists
if (light != noone) {

    switch (palette) {
    
        //Red
        case (0): with (light) image_blend = make_colour_rgb(248, 88, 0); break;
        
        //Brown
        case (1): with (light) image_blend = make_colour_rgb(152, 112, 80); break;
        
        //Yellow
        case (2): with (light) image_blend = make_colour_rgb(248, 216, 32); break;
        
        //Green
        case (3): with (light) image_blend = make_colour_rgb(200, 248, 0); break;
        
        //Gray
        case (4): with (light) image_blend = make_colour_rgb(200, 184, 160); break;
    }
}

//Repeat
alarm[1] = 2;

//Cap palette variable
if (palette > 5)
    palette = 0;

