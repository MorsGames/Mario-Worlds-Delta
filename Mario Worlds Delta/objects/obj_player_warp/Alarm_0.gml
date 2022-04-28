/// @description Warp to the destination room

//Set exit type
global.postchange = 1;

//Set exit direction
global.exit_dir = exit_dir;

//Set warp id
global.exit_id = exit_id;

//If the pipe does not lead to a different room
if (destination == noone) {
    
    //Move the player
    with (obj_warpnode) event_user(0);
        
    //Perform fade out
    with (obj_controller) {
    
        event_user(0);
        size = 0;
    }
}
else
    room_goto(destination);

