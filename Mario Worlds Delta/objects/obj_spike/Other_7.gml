/// @description Stop throwing animation

if (sprite_index == spr_spike_throw) {

    //Stop animation
    sprite_index = spr_spike_throw2;
    
    //Create ball...
    myball = instance_create(x, y-16, obj_spike_ball);
    with (myball) {
    
        parent = other.id;
    }
    
    //...and throw it away.
    alarm[1] = 30;
}

