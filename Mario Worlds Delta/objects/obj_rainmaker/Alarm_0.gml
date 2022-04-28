/// @description Lightning strike

//Generate
alarm[0] = 100+random(round(200));

//If this object can generate lightning
if (lightning == 1)
&& (!instance_exists(obj_player_dead))
    instance_create(0, 0, obj_lightningsheet);

