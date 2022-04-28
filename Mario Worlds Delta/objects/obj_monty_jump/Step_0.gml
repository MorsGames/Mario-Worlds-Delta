/// @description Jumping monty logic

//Floor collision
event_user(4);

//If moving down
if (gravity == 0) {

    //If there's a semisolid or a slope below
    if (vspeed >= 0) {
    
        //Check what kind of mole will appear
        switch (type) {
        
            //No coffee mole
            case (0): instance_create(x+8, y, obj_monty); break;
            
            //Coffee induced mole
            case (1): instance_create(x+8, y, obj_monty_chase); break;
        }
        
        //Destroy
        instance_destroy();
    }
}
else
    gravity = 0.2;

