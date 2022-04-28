/// @description Turn into a stunned goombud

//Create stunned galoomba
with (instance_create(x, y, obj_galoomba_held)) {

    //Hereby sprite
    sprite_index = spr_goombud_down;

    //Hereby scale
    dir = other.xscale;
}

//Destroy
instance_destroy();

