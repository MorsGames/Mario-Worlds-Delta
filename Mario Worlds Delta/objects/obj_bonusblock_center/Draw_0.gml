/// @description Render lines and current box

//If there's winning lines
if (check == 3) {

    //Init line
    switch (flash) {
    
        //White
        case (0): draw_set_colour(c_white); break;
        
        //Yellow
        case (1): draw_set_colour(make_colour_rgb(248, 184, 0));
    }
    
    //Line width
    var lw = 6;
    
    //Line 0 (Center "|")
    if (match[0] == 1) then draw_line_width(x+7, y-33, x+7, y+47, lw);
    
    //Line 1 (Center "-")
    if (match[1] == 1) then draw_line_width(x-33, y+7, x+47, y+7, lw);
    
    //Line 2 ( / )
    if (match[2] == 1) then draw_line_width(x-33, y+47, x+47, y-33, lw);

    //Line 3 ( \ )
    if (match[3] == 1) then draw_line_width(x+47, y+47, x-33, y-33, lw);
    
    //Line 4 (Top "-")
    if (match[4] == 1) then draw_line_width(x-33, y-33, x+47, y-33, lw);
        
    //Line 5 (Bottom "-")
    if (match[5] == 1) then draw_line_width(x-33, y+47, x+47, y+47, lw);
    
    //Line 6 (Left "|")
    if (match[6] == 1) then draw_line_width(x-33, y-33, x-33, y+47, lw);
    
    //Line 7 (Right "|")
    if (match[7] == 1) then draw_line_width(x+47, y-33, x+47, y+47, lw); 
}

//Reset colour
draw_set_colour(c_white);

//Draw this block
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);

