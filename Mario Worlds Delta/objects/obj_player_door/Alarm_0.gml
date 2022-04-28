/// @description Warp to the destination room

//Set exit type
global.postchange = 0;

//Set warp id
global.exit_id = exit_id;

//If the pipe does not lead to a different room
if (destination == noone) {

    //Reset barrier
    obj_levelcontrol.barrier = 0;
    obj_levelcontrol.alarm[5] = 3;    
    
    //Close the door
    my_door.image_speed = 0;
    my_door.image_index = 0;
    
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

