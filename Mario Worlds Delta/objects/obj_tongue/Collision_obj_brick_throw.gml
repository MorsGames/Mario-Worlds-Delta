/// @description Eat bricks

if (!hunger) {

    //Item eaten
    hunger = 1;

    //Move tongue back
    ready = 1;
    alarm[0] = 8;

    //Put it in Yoshi's mouth
    obj_yoshi.mouthholder = obj_brick_throw_th;
    
    //Remember its sprite
    obj_yoshi.mouthsprite = spr_brick_throw_th;
    
    //Food sprite
    foodsprite = spr_brick_throw_th;

    //Destroy food
    with (other) instance_destroy();
}

