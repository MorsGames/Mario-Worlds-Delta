/// @description Update text

//Set background position
__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) + (0.5) );
__background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) + (1) );

//Draw first the background
if (ready == 1) {

    alpha += 0.025;
    if (alpha > 1) {
    
        alpha = 1;
        ready = 2;
        alarm[2] = 240;
    }
}
else if (ready == 3) {

    alpha -= 0.025;
    if (alpha < 0) {
    
        alpha = 0;
        ready = 4;
    }
}

//Update yy
if (ready == 4) {

    yy += 0.4;
    if (yy > 2112) {
    
        alpha += 0.025;
        if (alpha > 1) {
        
            alpha = 1;
            ready = 5;
            alarm[3] = 60;
        }
    }
}

