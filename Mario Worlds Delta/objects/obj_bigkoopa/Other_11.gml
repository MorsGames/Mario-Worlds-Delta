/// @description Turn into a shell

//Create shell
with (instance_create(x, y, obj_shell)) sprite_index = spr_shell_big;

//Create a naked koopa
with (instance_create(x, y, obj_bigbeachkoopa)) {

    //Set the sprite
    sprite_index = spr_bigbeachkoopa;
    
    //Set the horizontal speed
    hspeed = 3*sign(obj_playerparent.xscale);
    
    //Do not allow movement
    ready = 0;
}

//Destroy
instance_destroy();

