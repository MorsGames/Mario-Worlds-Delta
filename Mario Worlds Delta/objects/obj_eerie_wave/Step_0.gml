/// @description Waving Eerie logic

//Inherit event from parent
event_inherited();

//Perform wave movement
if (hspeed != 0) {

    y = ystart + sin((timer) * 0.0675) * 16;
    timer ++;
}

