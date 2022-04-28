/// @description Get the item shown

//If the item is not overlapping a solid.
if (ready == true) {

    //Check the sprite
    switch (sprite_index) {
    
        //Mushroom
        case (spr_mushroom): {
        
            instance_create(x, y, obj_mushroom);
            instance_destroy();
        } break;
        
        //Fireflower
        case (spr_fireflower): {
        
            instance_create(x, y, obj_fireflower);
            instance_destroy();
        } break;
        
        //Feather
        case (spr_feather): {
        
            instance_create(x, y, obj_feather);
            instance_destroy();
        } break;
        
        //Iceflower
        case (spr_iceflower): {
        
            instance_create(x, y, obj_iceflower);
            instance_destroy();
        } break;
    
        //Starman
        case (spr_star): {
                            
            instance_create(x, y, obj_star);
            instance_destroy();
        } break;
    }
}

