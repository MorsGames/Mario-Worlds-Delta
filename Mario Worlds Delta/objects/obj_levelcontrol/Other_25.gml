/// @description Set up object to follow

//If the player does exist
if (instance_exists(obj_followme))
    follow = obj_followme;
    
//Otherwise, if the player has cleared the level
else if (instance_exists(obj_player_clear))
    follow = obj_player_clear;
    
//Otherwise, if the player exists and he just died
else 
    follow = noone;

