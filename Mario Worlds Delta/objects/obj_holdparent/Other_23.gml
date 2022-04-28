/// @description Check what item is holding the item

//Check 'Warp'
if (instance_exists(obj_player_warp))
    follow = obj_player_warp;
    
//Check 'Door'
else if (instance_exists(obj_player_door))
    follow = obj_player_door;
    
//Reset to default
else
    follow = noone;

