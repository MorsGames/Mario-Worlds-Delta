/// @description Climb inside the shell

//If the shell is being held, inherit default event
if (other.held == 1)
    event_inherited();
    
//Otherwise
else {
    
    //If the koopa is jumping inside
    if (jumping == 1)
    && (ready == 2) {
        
        //With the shell
        with (other) {
        
            instance_create(x, y, obj_shell_kamikaze);
            instance_destroy();
        }
        
        //Destroy this object
        instance_destroy();
    }
}

