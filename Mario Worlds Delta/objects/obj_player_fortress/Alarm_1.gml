/// @description Set door type and save Yoshi

if global.mount != 0 {

    global.savedmount = 1;
    global.savedmountcolour = pseudomountcolour;
    global.mount = 0;
    global.mountcolour = 0;
    
}

with (entrancedoor) {

    doortype = other.doortype;
    x = other.x + other.doordistance;
    
}

