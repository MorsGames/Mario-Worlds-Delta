/// @description Turn into a snow block

//If this is a head
if (image_index == 0)
&& (sprite_index == spr_pokey_snow) {

    //Create a snowball
    with (instance_create(x, y+4, obj_brick_throw_th)) {
    
        sprite_index = spr_pokey_snowball;
        alarm[0] = -1;
        alarm[1] = -1;
    }
    
    //Destroy
    instance_destroy();
    
    //If the player did 6 or less consecutive stomps
    if (obj_playerparent.hitcombo <= 6) 
        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(2+obj_playerparent.hitcombo);
    
    //Otherwise if the player did 7 or more consecutive stomps
    else {
    
        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) 
            event_user(9);
    }
    
    //Increment combo
    obj_playerparent.hitcombo++;
}

//Otherwise, if this is not the head
else if (image_index == 1) {

    //If this is a body part...
    with (mebelow) {
    
        //Create dead body effect
        with (instance_create(x, y, obj_pokey_dead)) {
        
            //Set up the sprite
            sprite_index = other.sprite_index;
        }
        
        //Perform same event
        event_user(1);
        
        //Destroy
        instance_destroy();
    }
}    

