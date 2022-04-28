/// @description Turn into a silver coin if the Gray P-Switch is active

if (obj_levelcontrol.gswitchon == 1) {

    //Turn into a coin
    with (instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2-8, obj_coin_silver)) {

        //Jump a bit
        vspeed = -4;
        y--;
        
        //Move in the opposite way the player is
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x)
            hspeed = 0.5;
        else
            hspeed = -0.5;                    
    }
    
    //Destroy
    instance_destroy();    
}

