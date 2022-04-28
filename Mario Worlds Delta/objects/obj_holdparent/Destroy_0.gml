/// @description Protect the player from the horrors of holding "nothing"

if (held) {

    //If the player was holding something
    if (instance_exists(obj_playerparent))
    && (obj_playerparent.holding == 1)
        obj_playerparent.holding = 0; 
}

