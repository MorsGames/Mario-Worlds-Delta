/// @description Generate stars

//Generate effect
var a;
a = 90;
repeat (5) {

    eff = instance_create(x, y+8, obj_explosion_stars);
    with (eff) {
    
        dir = a;
    }
    a += 72;
}
alarm[2] = 8;

