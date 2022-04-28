/// @description Replace item

//If not hit
if (ready == 0) {

    //Check item displayed and replace it
    switch (swap) {
    
        //Mushroom -> Fireflower
        case (spr_mushroom): swap = spr_fireflower; break;
        
        //Fireflower -> Feather
        case (spr_fireflower): swap = spr_feather; break;
        
        //Feather -> Iceflower
        case (spr_feather): swap = spr_iceflower; break;
        
        //Iceflower -> Starman
        case (spr_iceflower): swap = spr_star; break;
        
        //Starman -> Mushroom
        case (spr_star): swap = spr_mushroom; break;
    }
    
    //Repeat the process
    alarm[2] = 90;
}

