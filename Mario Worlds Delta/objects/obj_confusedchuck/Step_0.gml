/// @description Confused Chuck logic

//If the chuck health is maxed out
if (hp == 3) {

    //If jumping
    if (jumping > 0) {
    
        //If moving up
        if ((jumping == 1) && (vspeed > 0)) {
        
            //Throw a ball on the same direction
            with (instance_create(x+8*sign(xscale), y, obj_baseball)) hspeed = 1.5*sign(other.xscale);
            
            //Set the default pose
            image_speed = 0;
            image_index = 0;
            
            //End throwing
            jumping = 2;
        }
        
        //If on ground
        else if ((jumping == 2) && (gravity == 0)) {
        
            //Set the default sprite
            sprite_index = spr_confusedchuck;
        
            //Set the default pose
            image_speed = 0;
            image_index = 0;
            
            //End throwing
            jumping = 0;
            
            //Decrement balls
            balls--;
                    
            //If there's balls left
            if (balls > 0)
                alarm[0] = 15;
            else {

                balls = choose(2, 3, 4, 5);
                alarm[0] = 60;
            }
        }
    }

    //Default floor collision
    event_user(4);
    
    //Face towards the player
    if (throwing == 0)
        event_user(8);
}
else
    event_inherited();

