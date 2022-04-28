/// @description Set the turning positions

if (originx <= x) {

    hspeed = -1;
    stopleft = originx-20;
}
else if (originx >= x) {

    hspeed = 1;
    stopright = originx+20;
}

