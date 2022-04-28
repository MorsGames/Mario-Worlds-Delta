/// @description Bumper logic

//If bouncing...
if (ready == 1) {

    scale += 0.05;
    if (scale > 1.2)
        ready = 2;
}

//If returning to normal
else if (ready == 2) {

    scale -= 0.05;
    if (scale < 1) {
    
        scale = 1;
        ready = 0;
    }
}

