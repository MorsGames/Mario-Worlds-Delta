/// @description Make the engine move when ready

if (myrope != noone) {

    //If the rope is carrying a passenger
    if (state == "IDLE") {
    
        //If the player is on the rope
        if (myrope.ison == true)
            state = "IN_LINE";
    }
    
    //Keep the rope in position
    myrope.x = self.x;
    myrope.y = self.y+14;
}

