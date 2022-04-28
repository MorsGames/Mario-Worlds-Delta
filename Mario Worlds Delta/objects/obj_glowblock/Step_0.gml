/// @description Light logic

//Inherit event from parent
event_inherited();

//If this block is emitting light
if (instance_exists(mylight)) {

    //If the object is held
    if (held) {
    
        //If the object is not being carried through rooms
        if (instance_exists(obj_player_warp))
        || (instance_exists(obj_player_door)) {

            mylight.radius--;
            if (mylight.radius < 16)
                mylight.radius = 16;
        }
        else {
        
            mylight.radius += 2;
            if (mylight.radius > 80)
                mylight.radius = 80;
        }
    }
    else {

        mylight.radius--;
        if (mylight.radius < 16)
            mylight.radius = 16;            
    }
    
    //Position
    mylight.x = x;
    mylight.y = y+8;
}

