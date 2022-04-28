/// @description Boomerang bro animation

//If not jumping
if (_throw == 0) {

    //Animate
    image_speed = 0.15;

    //Set default sprite
    sprite_index = spr_boomerangbro;
}

//Otherwise, if jumping
else if (_throw) {

    //Set sprite
    sprite_index = spr_boomerangbro_throw;
    
    //Do not animate
    image_speed = 0;
    image_index = _throw-1;
}

//Update deathsprite / stompsprite
deathsprite = sprite_index;
stompsprite = sprite_index;

