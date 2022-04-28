/// @description Move towards the player

//If the koopa can move
if (ready > 0) {

    //Inherit event
    event_inherited();

    //Jump if stun
    if (sprite_index == spr_beachkoopa_yellow) {
    
        //Set walking sprite
        sprite_index = spr_beachkoopa_yellow_walk;
        
        //Boost jump
        y--;
        
        //If underwater
        vspeed = -2.5;
    }
    
    //Follow the player
    alarm[11] = 60;
}

