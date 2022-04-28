/// @description End block 

//If the item inside is not a coin
if (obj_controller.coins >= 30) {

    //If the player is small
    with (instance_create(x+8, y, obj_powerup_sprout))    
        sprite_index = enum_get_sprite(itemtype.lifeup);
}

//Inherit event from block
event_inherited();

