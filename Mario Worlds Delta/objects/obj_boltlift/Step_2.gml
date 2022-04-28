/// @description Bolt Lift logic

if (isspin) {

    spinoffset++;
    if (spinoffset > 16) {
    
        spinoffset = 0;
        isspin = 0;
        alarm[0] = 60;
    }
}

//Snap solid into position.
mytop.x = x;
mytop.y = y+spinoffset;

