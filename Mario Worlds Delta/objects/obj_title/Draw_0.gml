/// @description Spotlight

//Don't continue to draw the spotlight if it has reached a certain size
if (scale < 300) {

    //Check if the spotlight still exists, and create a new one if not
    if (!surface_exists(spotlight)) {
    
        spotlight = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ));
        
    }
    
    //Otherwise, draw the iris-out effect.
    else {
    
        //Set the target surface.
        surface_set_target(spotlight);
        
        //Set circle color
        draw_set_color(c_black);
        
        //Draw a rectangle
        draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false);
        
        if (scale > 0.01) {
        
            //Set the blending mode
            draw_set_blend_mode(bm_subtract);
            
            //Draw the transition image.
            draw_set_circle_precision(64);
            
            //Draw the circle
            draw_circle(__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 )/2), __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 )/2), scale, false);
            
            //Set the blending end mode
            draw_set_blend_mode(bm_normal);
        
        }
        
        //Reset color
        draw_set_color(c_white);
        
        //Reset the surface target
        surface_reset_target();
        
        //Draw the spotlight
        draw_surface(spotlight,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
        
    }

}

/// Dark background during deletion

//If on file deletion...
if (page == menupage.filedelete) {

    //Set alpha
    draw_set_alpha(0.5);
    
    //Draw rectangle
    draw_rectangle_colour(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ), c_black, c_black, c_black, c_black, false);
    
    //Set alpha
    draw_set_alpha(1);

}

///Title Text

//Set the font
draw_set_font(global.font);

//Set the colour
draw_set_colour(c_white);

//Version
draw_text(__view_get( e__VW.XView, 0 )+18, __view_get( e__VW.YView, 0 )+18, string_hash_to_newline(string(cs_version)));
    
//Draw option text
if (mode > 1) {
    
    for (var i = 0; i < array_length_2d(menu,page); i ++) {
    
        //Spacing between lines
        var spacing = 16;
        
        //X offset of the text
        var text_xoffset = 90;
        
        //Y offset of the text from the center
        var text_yoffset = 16;
        
        //Slight line scale change if the row length is too large
        if (array_length_2d(menu,page) > 6)
        
            var spacing = 12;
            
        //Adjust the text on File Select
        if (page == menupage.fileselect) {
        
            text_xoffset = 80;
            text_yoffset = 8;
            
        }
        
        //Adjust the text on File Delete
        if (page == menupage.filedelete) {
        
            text_xoffset = 48;
            text_yoffset = 8;
            
        }
            
        //Adjust the text on Options
        if (page == menupage.options1 || page == menupage.options2) {
        
            text_xoffset = 48;
            text_yoffset = 4;
            
        }
            
        //Adjust the text on Key input
        if (page == menupage.keys1)
        || (page == menupage.keys2) {
        
            text_xoffset = 40;
            text_yoffset = 0;
            
        }
        
        //Draw the text
        draw_text(__view_get( e__VW.XView, 0 )+text_xoffset, __view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)+text_yoffset+(spacing*(i)), string_hash_to_newline(menu[page,i]));
        
        //Draw file info if your selection is within the files
        if ((page == menupage.fileselect || page == menupage.filedelete)
        && i < 3) {

            draw_text_colour(__view_get( e__VW.XView, 0 )+text_xoffset+string_width(string_hash_to_newline(menu[page,i])), __view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)+text_yoffset+(spacing*(i)), string_hash_to_newline(" ..."), c_smwyellow, c_smwyellow, c_smwyellow, c_smwyellow, 1);
            
            var file_info = "EMPTY";
            var extra_offset = 0;
            var col = c_white;
            
            if (fileinfo[i+1] != -1) {
                
                //Change info to current file number    
                file_info = fileinfo[i+1];
                
                //Set color to yellow
                col = c_smwyellow;
                
                //Offset number
                if (string_length(file_info) < 2)
                
                    extra_offset = 8;
                
            }
            
            draw_text_colour(__view_get( e__VW.XView, 0 )+text_xoffset+string_width(string_hash_to_newline(menu[page,i]))+string_width(string_hash_to_newline(" ..."))+extra_offset, __view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)+text_yoffset+(spacing*(i)), string_hash_to_newline(file_info), col, col, col, col, 1);
        
        }        
            
        //Draw the cursor
        if (i == current) && (display == 1)
        
            draw_sprite_ext(spr_cursor_title, image_index, __view_get( e__VW.XView, 0 )+(text_xoffset-18), __view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)+text_yoffset+(spacing*(i)), 1, 1, 0, c_white, 1);
    
    }

} else if (scale >= 100) && (display == 1) {

    //Set horizontal alignment to the center
    draw_set_halign(fa_center);

    //Draw the text
    draw_text(__view_get( e__VW.XView, 0 )+(global.gw/2), __view_get( e__VW.YView, 0 )+(global.gh/2)+16, string_hash_to_newline("PRESS START!"));
    
    //Reset horizontal text alignment
    draw_set_halign(fa_left);

}

//Center the text
draw_set_halign(fa_center);

//Set the disclaimer colour
draw_set_colour(make_colour_rgb(0, 216, 248));

//Disclaimer
if (page == 0)

    draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-40, string_hash_to_newline(string(cs_disclaimer)));

//Set the default colour
draw_set_colour(c_white);

//Reset text alignment
draw_set_halign(fa_left);

///Title Decoration

//Draw title
draw_background_ext(bgr_title, x, y+40, 1, 1, 0, c_white, 1);

//Draw title border
draw_background_ext(bgr_titlebg, x, y, 1, 1, 0, c_white, 1);

