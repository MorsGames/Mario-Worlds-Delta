/// @description Set up the screen to be displayed

//If fullscreen is activated
if (fullscreen)
    window_set_fullscreen(fullscreen);

//Otherwise
else {

    //Set windowed mode
    window_set_fullscreen(0);
    
    //Set up filter
    var s = filter+1;
    
    //Reset display
    display_reset(0, vsync);
    
    //Set up the window
    window_set_size(global.gw*s, global.gh*s);
    
    //Set up the display
    display_set_gui_size(global.gw*s, global.gh*s);
    
    //Center the window
    alarm[2] = 1;
}

