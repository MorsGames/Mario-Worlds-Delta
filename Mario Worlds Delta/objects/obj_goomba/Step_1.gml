/// @description Goomba Stack behaviour + G-Switch effect

//Inherit event from parent
event_inherited();

//Stacking
if (!instance_exists(mebelow)) {

    var next = mebelow;
    while (next != noone) {
    
        instance_activate_object(next);
        if (instance_exists(next))
            next = next.mebelow;
        else
            next = noone;
    }
}

