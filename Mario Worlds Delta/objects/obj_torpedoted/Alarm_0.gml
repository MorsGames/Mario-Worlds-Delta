/// @description Leave a trail

//Repeat
alarm[0] = 7;

//If facing right...
if (xscale > 0) {

    with (instance_create(x-16, y+8, obj_smoke)) {
    
        sprite_index = spr_smoke_16
        image_speed = 0.3;
        image_index = 1;
    }
}

//Otherwise, if facing left...
else if (xscale < 0) {

    with (instance_create(x+16, y+8, obj_smoke)) {
    
        sprite_index = spr_smoke_16
        image_speed = 0.3;
        image_index = 1;
    }
}

