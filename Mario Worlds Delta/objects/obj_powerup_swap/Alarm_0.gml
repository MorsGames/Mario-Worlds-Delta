/// @description Change the sprite

switch (sprite_index) {

    //Mushroom -> Fireflower
    case (spr_mushroom): { 
    
        sprite_index = spr_fireflower;
        image_speed = 0;
        image_index = 0;
        break;
    }
    
    //Fireflower -> Leaf
    case (spr_fireflower): {
    
        sprite_index = spr_feather;
        image_speed = 0;
        image_index = 0;
        break;
    }
    
    //Leaf -> Iceflower
    case (spr_feather): {
    
        sprite_index = spr_iceflower;
        image_speed = 0;
        image_index = 0;
        break;
    }
    
    //Iceflower -> Starman
    case (spr_iceflower): {
    
        sprite_index = spr_star;
        image_speed = 0.5;
        break;
    } break;
    
    //Starman -> Mushroom
    case (spr_star): {
    
        sprite_index = spr_mushroom;
        image_speed = 0;
        break;
    } break;
}

//Repeat the process.
alarm[0] = 90;

