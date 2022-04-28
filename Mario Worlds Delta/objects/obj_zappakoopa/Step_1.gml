/// @description Laser 

if (!instance_exists(mylaser))
&& (laser_ex == 1)
{
    alarm[5] = 30;
    laser_ex = 0;
    mylaser = noone;
}

