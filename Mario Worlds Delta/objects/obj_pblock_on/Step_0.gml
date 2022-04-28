/// @description Active "P" platform logic

//If the level control exists
if (instance_exists(obj_levelcontrol)) {

//Turn solid if the P-Switch is not active
    if (obj_levelcontrol.switchon == 0) {
    
        //Set solid frame
        image_speed = 0;
        image_index = 0;
        
        //If the solid does not exist
        if (mysolid == noone)
            mysolid = instance_create(x, y, obj_solid);
    }
    
    //Otherwise, turn non-solid
    else {
    
        //Set non-solid frames
        image_speed = 0.15;
        
        //Destroy solid
        if (mysolid != noone) {
        
            with (mysolid) instance_destroy();
            mysolid = noone;
        }
    }
}

