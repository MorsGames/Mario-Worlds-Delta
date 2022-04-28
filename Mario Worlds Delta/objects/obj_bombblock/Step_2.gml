/// @description Bomb block logic

//Check for a fireball
fire = collision_rectangle(bbox_left-1, bbox_top-4, bbox_right+1, bbox_bottom+1, obj_fireball, 0, 0);

//If there's a fireball in position
if (fire) {

    //If the block is not animating
    if (image_speed = 0) {
    
        //Animate it...
        image_speed = 0.3;
        
        //...and blow it up
        alarm[0] = 16;
    }
    
    //Destroy fireball
    with (fire) event_user(0);
}

