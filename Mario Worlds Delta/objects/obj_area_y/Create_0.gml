/// @description Yellow Switch Block

//Do not animate
image_speed = 0;
image_index = 1;

//If the yellow switch has been pressed, become solid
if (global.palaceswitch_y = true) {

    //Create a new block
    with (instance_create(x, y, obj_qblock)) {
    
        //Set item
        sprout = itemtype.mushroom;
        
        //Set sprite
        sprite_index = other.sprite_index;
        image_speed = 0;
        image_index = 0;
    }
    
    //Destroy
    instance_destroy();
}

