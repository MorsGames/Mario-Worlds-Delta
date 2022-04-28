/// @description Manage offset when floating

//If Peach is floating
if (floating > 0) && (floating < 128) {

    //Set the offset
    switch (offsetnext) {
    
        //-1
        case (0): offset = -1; break;
        
        //1
        case (2): offset = 1; break;
        
        //0
        default: offset = 0; break;
    }

    //Increment next offset
    offsetnext++;
    
    //Leave a trail if floating
    with (instance_create(x-8+random(16), y+16+random_range(-4, 4), obj_sparkle)) {
    
        image_speed = 0.1;
        sprite_index = spr_sparkle_small_pink;
    }
}
else {

    offset = 0;
    if (offsetnext > 0)
        offsetnext = 0;
}

//Repeat process
alarm[5] = 6;

//Cap offset value
if (offsetnext == 4)
    offsetnext = 0;

