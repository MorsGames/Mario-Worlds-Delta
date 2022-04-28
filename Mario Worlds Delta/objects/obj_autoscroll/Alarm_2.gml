/// @description Start moving

//If a path does exist
if (mypath != noone)
    path_start(mypath,0.01,path_action_stop,false);

//Otherwise, move normally
else if (mode == 0)
    hspeed = 0.01;

