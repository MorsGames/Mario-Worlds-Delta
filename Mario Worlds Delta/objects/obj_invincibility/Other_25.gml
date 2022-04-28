/// @description Check what item is present

//Check 'Warp'
if (instance_exists(obj_player_warp))
    follow = obj_player_warp;
    
//Check 'Door'
else if (instance_exists(obj_player_door))
    follow = obj_player_door;
    
//Check 'Clear'
else if (instance_exists(obj_player_clear))
    follow = obj_player_clear;
    
//Reset to default
else
    follow = noone;

