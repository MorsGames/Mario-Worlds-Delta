/// @description Mario platform logic

//Turn solid if Mario is being controlled
if (global.player == 0) {

    //Set solid frame
    image_index = 0;
    
    //If the solid does not exist
    if (mysolid == noone)
        mysolid = instance_create(x, y, obj_solid);
}

//Otherwise, turn non-solid
else {

    //Set non-solid frame
    image_index = 1;
    
    //Destroy solid
    if (mysolid != noone) {
    
        with (mysolid) instance_destroy();
        mysolid = noone;
    }
}

