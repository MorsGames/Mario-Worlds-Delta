/// @description  Make the player adhere to the cape sprites

if (instance_exists(obj_playerparent)) {

    if (sprite_index == player_cape()) {

        obj_playerparent.sprite_index = sprite_index;
        obj_playerparent.image_index = img_index;
        
    }
    
}

