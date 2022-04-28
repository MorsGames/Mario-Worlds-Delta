/// @description Plant ball logic.

//Keep parent activated
instance_activate_object(parent);

//Set angle
angle += 12;

//If the plant is not blowing.
if (!parent.ready) {

    //If the ball is nearby the plant.
    if (y > parent.dist-40) {
    
        //If the ball is being blown.
        if (blown) {
        
            //Stop being blown.
            blown = false;
            
            //Make the plant blow again.
            with (parent) {
            
                alarm[0] = 120;
            }
        }
        
        //Set the ball speed
        vspeed -= 0.25;
    }
    
    //Otherwise, reduce speed
    else    
        vspeed += 0.125;        
}

//Otherwise, if the plant is blowing.
else if (parent.ready) {

    //If the ball is high enough.
    if (y < parent.dist-144) {
    
        //Set the vertical speed.
        vspeed += 0.125;
        
        //Get blown
        blown = 1;
        
        //Make the plant able to blow again.
        if (vspeed > 0)        
            parent.ready = false;
    }
    
    //Otherwise, reduce speed.
    else    
        vspeed -= 0.25;
}

//Cap vertical speed.
if (speed > 2.5)
speed = 2.5;
    
//Destroy if outside the room.
if (y > room_height+32)
    instance_destroy();

