/// @description Display the message box

//Animate dialog cursors
anim2 += 0.1;

//Draw the screenshot if it exists
if (background_exists(back)) {

    //Disable alpha blending
    draw_enable_alphablend(0);
    
    //Draw screenshot
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending
    draw_enable_alphablend(1);
}

//Draw the message box
draw_sprite_ext(spr_dialog, obj_controller.hud_type, x, y, 1, 1, 0, c_white, 1);

//If the text should be displayed
if (showing) {   
    
    //Increment the number of letters that should be displayed
    if (a < string_length(text))    
        a++;
    
    //Set the font
    draw_set_font(font);

    //Draw the text up to the number of letters that should be displayed
    draw_text_colour(x+49, y+5, string_hash_to_newline(string_copy(text,1,a)), c_white, c_white, c_white, c_white, 1);
    
    //Draw mugshot if exists
    if (mugshot != noone) {
    
        //Draw the mugshot
        draw_sprite_ext(mugshot, anim, x+8, y+7, 1, 1, 0, c_white, 1);
        
        //Animate the mugshot
        if (a < string_length(text))       
            anim += 0.125;
        else
            anim = 0;
    }
    
    //Draw continue / finish arrow.
    if (a >= string_length(text)) {
    
        if (newtext = "")
            draw_sprite_ext(spr_cursor, anim2, x+218, y+32, 1, 1, 0, c_white, 1);
        else
            draw_sprite_ext(spr_cursor_continue, anim2, x+218, y+32, 1, 1, 0, c_white, 1);
    }
}

