/// @description Green Switch Block

//Do not animate
image_speed = 0;
image_index = 1;

//If the green switch has been pressed, become solid
if (global.palaceswitch_g = true) {

    //Create a new block
    with (instance_create(x, y, obj_qblock)) {
    
        //Set item
        sprout = itemtype.feather;
        
        //Set sprite
        sprite_index = other.sprite_index;
        image_speed = 0;
        image_index = 0;
    }
    
    //Destroy
    instance_destroy();
}

