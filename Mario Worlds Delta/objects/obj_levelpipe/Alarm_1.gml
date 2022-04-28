/// @description Go where the pipe takes you

//Automatically open new paths
global.clear = 3;

//Replace player position
ds_map_replace(global.worldmap, "playerx", target_id.x);
ds_map_replace(global.worldmap, "playery", target_id.y);

//Restart room
room_goto(rm_worldmap);

