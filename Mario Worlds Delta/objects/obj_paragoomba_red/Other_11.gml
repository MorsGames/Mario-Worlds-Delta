/// @description Turn into a regular goomba

//Create a goomba
with (instance_create(x, y, obj_goomba)) {

    sprite_index = spr_goomba_red;
    hspeed = other.hspeed;
    deathsprite = spr_goomba_red_dead;
    stompsprite = spr_goomba_red_sq;
}

//Destroy
instance_destroy();

