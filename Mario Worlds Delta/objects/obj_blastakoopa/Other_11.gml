/// @description Turn into a stunned mecha koopa

//Create stunned galoomba
with (instance_create(x, y, obj_mechakoopa_held)) {

    //Set the sprite
    sprite_index = spr_blastakoopa_sq;
    
    //Death sprite
    deathsprite = spr_blastakoopa_dead;
    
    //Stun sprite
    stun1 = spr_blastakoopa_sq;
    stun2 = spr_blastakoopa_sq2;
    
    //Return
    returnobj = obj_blastakoopa;
    
    //Hereby scale
    dir = other.xscale;
}

//Destroy
instance_destroy();

