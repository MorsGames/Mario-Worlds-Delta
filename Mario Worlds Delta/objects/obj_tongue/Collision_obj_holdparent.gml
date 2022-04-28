/// @description Eat held items

if (!hunger) 
&& (other.sprite_index != spr_pswitch_press) {

    //Item eaten
    hunger = 1;

    //Move tongue back
    ready = 1;
    alarm[0] = 8;

    //Put it in Yoshi's mouth
    obj_yoshi.mouthholder = other.object_index;

    //Remember its sprite
    obj_yoshi.mouthsprite = other.sprite_index;

    //Food sprite
    foodsprite = other.sprite_index;

    //Destroy food
    with (other) instance_destroy()
}

