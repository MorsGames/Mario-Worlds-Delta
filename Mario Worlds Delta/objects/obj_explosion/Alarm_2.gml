/// @description Generate more stars

//Generate effect
var b;
b = 270;
repeat (5) {

    eff = instance_create(x, y+8, obj_explosion_stars);
    with (eff) {
    
        dir = b;
    }
    b += 72;
}
alarm[1] = 8;

