/// @description Prepare the beam

//Create a beam with this object as parent
with (instance_create(x+8*sign(xscale), y+8, obj_zappakoopa_beam)) 
    parent = other.id;

