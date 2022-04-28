/// @description Climb inside the shell

//If the shell is being held, inherit default event
if (other.held == 1)
    event_inherited();
    
//Otherwise
else {
    
    //If the koopa is jumping inside
    if (jumping == 1)
    && (ready == 2) {
    
        //If the shell is a green one, become a green koopa
        if (other.sprite_index == spr_shell) {
        
            //With the shell
            with (other) {
            
                instance_create(x,y,obj_koopa);
                instance_destroy();
            }
            
            //Destroy this object
            instance_destroy();
        }
        
        //Otherwise if the shell is a red one, become a red koopa
        else if (other.sprite_index == spr_shell_red) {
        
            //With the shell
            with (other) {
            
                instance_create(x,y,obj_koopa_red);
                instance_destroy();
            }
            
            //Destroy this object
            instance_destroy();    
        }
    }
}

