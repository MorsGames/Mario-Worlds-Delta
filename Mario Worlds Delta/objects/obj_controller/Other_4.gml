/// @description Set view parameters

//Make view 0 visible if not visible
__view_set( e__VW.Visible, 0, true );

//Enable views if not enabled
view_enabled = true;

//Update wport
__view_set( e__VW.WPort, 0, global.gw );

//Update hport
__view_set( e__VW.HPort, 0, global.gh );

//Update wview
__view_set( e__VW.WView, 0, global.gw );

//Update hview
__view_set( e__VW.HView, 0, global.gh ); 

//Update hborder
__view_set( e__VW.HBorder, 0, global.gw/2 );

//Update vborder
__view_set( e__VW.VBorder, 0, global.gh/2 );

//Set up view hor. speed
__view_set( e__VW.HSpeed, 0, -1 );

//Set up view ver. speed
__view_set( e__VW.VSpeed, 0, -1 );

///Fade the screen to black, unless you just opened up the game

if (mode = 1)
    event_user(0);

