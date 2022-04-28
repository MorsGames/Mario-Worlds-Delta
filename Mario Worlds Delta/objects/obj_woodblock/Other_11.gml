/// @description End block 

//If the item inside is not a coin
if (sprout != itemtype.coin) {

    //If the player is small
    with (instance_create(x+8, y, obj_powerup_sprout))    
        sprite_index = enum_get_sprite(other.sprout);
}

//Set the item type to coin
sprout = itemtype.coin;

