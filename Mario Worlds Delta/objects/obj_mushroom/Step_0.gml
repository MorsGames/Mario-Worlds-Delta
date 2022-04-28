/// @description Mushroom logic

//Inherit event from parent object
event_inherited();

//If the item does not have permission
if (permission == 0) {

    //If there's no gravity, move down
    if (gravity == 0) {
    
        //Grant permission to move
        permission = 1;
    
        //If the player does not exist or is at the left
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x) {
        
            hspeed = -1;
            if (sprite_index == spr_1up)
            && (instance_exists(obj_bonusblock_center))                
                hspeed = -0.5;
        }
        else {
        
            hspeed = 1;
            if (sprite_index == spr_1up)
            && (instance_exists(obj_bonusblock_center))
                hspeed = 0.5;
        }
    }
}

//Set frame
if (hspeed < 0)
    image_index = 1;
else
    image_index = 0;

