/// @description Start jumping

//If the ninji is not jumping
if (jumping == 0) {

    //Do not animate
    image_speed = 0;
    image_index = 1;
    
    //Switch jump
    switch (jump) {
    
        //Low jump
        default: {
        
            //If swimming
            if (swimming == 1)
                vspeed = -1.75;
            else
                vspeed = -3.5;
        } break;
        
        //Medium jump
        case (2): {
        
            //If swimming
            if (swimming == 1)
                vspeed = -2.25;
            else
                vspeed = -4.5;                    
        } break;
        
        //High jump
        case (3): {
        
            //If swimming
            if (swimming == 1)
                vspeed = -2.75;
            else
                vspeed = -5.5;                    
        } break;
    }
    
    //Boost jump
    y--;    
    
    //Set jump state
    jumping = 1;    
    
    //Increment jump
    jump++;
    if (jump > 3)
        jump = 0;
}

