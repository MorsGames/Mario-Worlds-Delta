/// @description Update how many parts are above

//Keep updating
alarm[9] = 2;

//Repeat
repeat (99) {
    
    //If there's a pokey above
    if (instance_position(x, y-(a*14), obj_goomba))
        a++;
    else {
    
        a--;
        if (a < 1)
            a = 1;
    }
}

