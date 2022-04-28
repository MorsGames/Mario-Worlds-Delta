/// @description Get out of the shell

//If there's a koopa inside
if (koopainside == 1) {
    
    switch (sprite_index) {
    
        //Green Koopa Troopa
        case (spr_shell): instance_create(x, y, obj_beachkoopa); break;
        
        //Red Koopa Troopa
        case (spr_shell_red): instance_create(x, y, obj_beachkoopa_red); break;
        
        //Blue Koopa Troopa
        case (spr_shell_blue): instance_create(x, y, obj_beachkoopa_blue); break;
        
        //Yellow Koopa Troopa
        case (spr_shell_yellow): instance_create(x, y, obj_beachkoopa_yellow); break;
        
        //Gargantua Green Koopa
        case (spr_shell_big): instance_create(x, y, obj_bigbeachkoopa); break;
        
        //Gargantua Red Koopa
        case (spr_shell_big_red): instance_create(x, y, obj_bigbeachkoopa_red); break;
    }
    
    //Get outta here
    koopainside = 0;
}

//Otherwise, if this is not a koopa shell
else if (koopainside == -1) {

    switch (sprite_index) {
    
        //Classic Green Koopa
        case (spr_shell_classic): {
        
            instance_create(x, y, obj_classickoopa);
            instance_destroy();
        } break;
        
        //Classic Red Green Koopa
        case (spr_shell_classic_red): {
        
            instance_create(x, y, obj_classickoopa_red);
            instance_destroy();
        } break;
    
        //Buzzy Beetle
        case (spr_shell_buzzy): {
        
            instance_create(x, y, obj_buzzybeetle);
            instance_destroy();
        } break;
        
        //Spiny
        case (spr_shell_spiny): {
        
            instance_create(x, y, obj_spiny);
            instance_destroy();
        } break;
    }
}

