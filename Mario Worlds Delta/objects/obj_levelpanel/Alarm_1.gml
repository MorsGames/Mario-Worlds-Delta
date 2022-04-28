/// @description Go where the panel takes you

//Allow level exit
global.beaten = ds_map_find_value(global.worldmap_beaten, id);

//If no checkpoint was set, go to the default room
if (checkpoint == noone)
    global.targetroom = target;
    
//Otherwise
else {

    //Remember it...
    global.checkpoint = checkpoint;
    checkpoint = noone;
    
    //...and go to the checkpoint room
    global.targetroom = global.checkpointroom;
}

//Remember the player last position in map
with (obj_mapplayer) event_user(0);

//Go to the levelstart screen
room_goto(global.targetroom);

