/// @description Return to start position and allow block hit

//Return to start position
x = xstart;
y = ystart;

//Stop movement
speed = 0;

//Allow hit again
ready = 0;

//If the item inside is not a coin
if (sprout != itemtype.coin) 
&& (sprout != itemtype.coin_star)
&& (sprout != itemtype.coin_multi) {

    //If the player is small
    with (instance_create(x+8, y, obj_powerup_sprout)) {
    
        sprite_index = enum_get_sprite(other.sprout);
    }
    
    //End item sprout
    sprout = itemtype.coin;
}

