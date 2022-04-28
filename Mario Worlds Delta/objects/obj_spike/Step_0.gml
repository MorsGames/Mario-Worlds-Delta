/// @description Spike logic

//Inherit event from parent
event_inherited();

//If the spike does not move
if (_static == 1) {

    //If the player does not exist or is at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
}

