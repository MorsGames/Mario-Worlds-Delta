/// @description Spinner logic

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If the player does have the cape and it is not holding anything
    if (global.powerup == cs_pow_cape) 
    && (obj_playerparent.holding == 0) {
    
        x = round(obj_playerparent.x);
        y = round(obj_playerparent.y);
    }
    else
        instance_destroy();
}
else
    instance_destroy();

