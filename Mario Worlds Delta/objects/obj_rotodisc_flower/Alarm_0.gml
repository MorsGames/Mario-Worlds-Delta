/// @description Create discs

//Temporary variable
var a;
a = 360/discs;

//Create the discs
repeat (discs) {

    ID = instance_create(x, y, obj_rotodisc_flower_disc);
    with (ID) {
    
        angle = a;
        clockwise = other.clockwise;
        maxradius = other.maxrad;
        speedd = other.myspd;
    }
    a += 360/discs;
}

