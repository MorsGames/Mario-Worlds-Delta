/// @description End block 

//If this item held more than 1 coin
if (sprout == itemtype.coin_multi) 
|| (sprout == itemtype.coin_multi_shroom) {

    //If the timer is still going on, allow the block to be hit again.
    if (timer < 2)
        ready = 0;
        
    //Otherwise, perform end of bump event from parent
    else {
    
        //If the player collected 10 or more coins
        if (coins >= 10) 
        && (sprout == itemtype.coin_multi_shroom) {
        
            //Sprout out a mushroom
            with (instance_create(x+8, y, obj_powerup_sprout))
                sprite_index = enum_get_sprite(itemtype.mushroom);
        }
    
        //Inherit event from parent
        event_inherited();
    }
}

//Otherwise, if this item holds a starman and the player is invincible
else if (sprout == itemtype.coin_star) {

    //If the player is still invulnerable
    if (instance_exists(obj_invincibility)) {
    
        //Sprout out a starman
        with (instance_create(x+8, y, obj_powerup_sprout))
            sprite_index = enum_get_sprite(itemtype.star);
    }
    
    //Inherit event
    event_inherited();
}

else {

    //If the item inside is not a coin
    if (sprout != itemtype.coin) 
    && (sprout != itemtype.coin_snake) {
    
        //If the player is small
        with (instance_create(x+8, y, obj_powerup_sprout))    
            sprite_index = enum_get_sprite(other.sprout);
    }

    //Inherit event from block
    event_inherited();
}

