/// @description Set initial speed

//If the player does not exist or it is at the left   
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1.5;
else
    hspeed = 1.5;
    
//Start moving down
vspeed = 2;

