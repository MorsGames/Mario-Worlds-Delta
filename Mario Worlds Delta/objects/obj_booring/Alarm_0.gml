/// @description Create the Boos

var offset = 0;
repeat (boocount) {

    with instance_create(x+8, y, obj_booring_boo) {
    
        timer = offset;
        offset += ( ((2 * pi) / other.ringspeed ) / ((other.boocount) + other.gapsize));
        ringsize = other.ringsize;
        ringspeed = other.ringspeed;
        clockwise = other.clockwise;
    }
}

