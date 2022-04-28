/// @description Spawn microgoombas

if ((flying > 1) && (flying < 3)) {

    alarm[3] = 48;
    with (instance_create(x, y+8, obj_microgoomba))    
        hspeed = 0.5*sign(other.hspeed);
}

