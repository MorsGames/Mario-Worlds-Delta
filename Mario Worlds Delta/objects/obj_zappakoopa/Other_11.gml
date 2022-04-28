/// @description Turn into a stunned mecha koopa

//Create stunned galoomba
with (instance_create(x, y, obj_mechakoopa_held)) {

    //Set the sprite
    sprite_index = spr_zappakoopa_sq;
    
    //Death sprite
    deathsprite = spr_zappakoopa_dead;
    
    //Stun sprite
    stun1 = spr_zappakoopa_sq;
    stun2 = spr_zappakoopa_sq2;
    
    //Return
    returnobj = obj_zappakoopa;
    
    //Hereby scale
    dir = other.xscale;
}

//Destroy
instance_destroy();

