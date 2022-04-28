/// @description Move towards the player

//If the koopa can move
if (ready > 0) {

    //Inherit event
    event_inherited();

    //Jump if stun
    if (sprite_index == spr_beachkoopa_red) {
    
        //Set walking sprite
        sprite_index = spr_beachkoopa_red_walk;
        
        //Boost jump
        y--;
        
        //If underwater
        if (!swimming)
            vspeed = -2.5;
        else
            vspeed = -0.625;
    }
}

