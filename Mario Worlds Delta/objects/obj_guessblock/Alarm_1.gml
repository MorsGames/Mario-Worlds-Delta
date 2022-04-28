/// @description Return to start position and turn into a empty block

//Stop vertical movement
vspeed = 0;
y = ystart;
    
//Change into a empty block
instance_create(x, y, obj_emptyblock);

