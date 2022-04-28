/// @description Move towards the player

//If the koopa can move
if (ready > 0) {

    //Inherit event
    event_inherited();

    //Set walking sprite and jump
    if (sprite_index == spr_bigbeachkoopa_red) {
    
        sprite_index = spr_bigbeachkoopa_red_walk;
        vspeed = -2.5;
        y--;
    }
}

