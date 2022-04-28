/// @description Donut logic

//Grow until it's completely big
if (ready == 1) {

    scale += 0.05;
    if (scale > 1) {
    
        //Check sprite
        if (sprite_index == spr_icicle_appear)        
            instance_create(xstart-8, ystart, obj_icicle);
        
        else {
        
            //Create donut replacement.
            switch (image_index) {
            
                //1x1 Donut
                case (0): instance_create(xstart-8, ystart-8, obj_donut); break;
    
                //3x1 Donut
                case (1): instance_create(xstart-24, ystart-8, obj_donut_triple); break;
                        
                //1x1 Red Donut
                case (2): instance_create(xstart-8, ystart-8, obj_donut_red); break;
    
                //3x1 Red Donut
                case (3): instance_create(xstart-24, ystart-8, obj_donut_red_triple); break;
                                        
                //1x1 Frozen Donut
                case (4): instance_create(xstart-8, ystart-8, obj_donut_ice); break;
    
                //3x1 Frozen Donut
                case (5): instance_create(xstart-24, ystart-8, obj_donut_ice_triple); break;
            }
        }
        
        //Destroy
        instance_destroy();
    }
}

