/// @description If the music is not the same as the music used in the last room

if (global.levelmusic != ini_section) {

    //Stop old stream
    alarm[1] = 1;
    
    //Play new stream
    global.levelmusic = ini_section;
}

