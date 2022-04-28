/// @description Back block of the block train

//Direction
dir = 0;

//Allow creation of blocks
ready = 0;

//Parent
parent = noone;

//Create platform
instance_create(xstart, ystart, obj_blocktrain_killer);

