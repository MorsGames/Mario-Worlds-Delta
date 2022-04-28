/// @description A Yoshi has born

//If there's not a yoshi in the room
if (instance_number(obj_yoshi) == 0) 
&& (instance_number(obj_egg_hatch) == 0){

    //Hatch the egg
    with (instance_create(x, y, obj_egg_hatch)) {
    
        //Green Yoshi
        if (other.sprite_index == spr_egg)
            colour = 0;
            
        //Red Yoshi
        else if (other.sprite_index == spr_egg_r)
            colour = 1;
            
        //Yellow Yoshi
        else if (other.sprite_index == spr_egg_y)
            colour = 2;
                        
        //Blue Yoshi
        else if (other.sprite_index == spr_egg_b)
            colour = 3;
    }
    
    //Destroy
    instance_destroy();
}

//Otherwise
else {

    //Create a 1-UP
    with (sprite_create_object(x, y-2, spr_1up)) {
    
        hspeed = 1;
    }

    //Destroy
    instance_destroy();
}

//Let's just destroy this before I do a yoshi
instance_destroy();

