/// @description Handles checkpoints, and other stuff

//If the player warped through a door, do not carry an item
if (global.postchange == 0) {

    global.carrieditem = noone;
    global.carriedsprite = noone;
}

//Manage music
event_user(5);

//If the time is set to something, and was not set in a previous room, set it
if (level_time > 0) 
&& (global.time == 0) {

    global.time = level_time;
    if (global.time < 101)
        alarm[3] = 40;
}

//If the timer was set
if (global.time > 0)
    alarm[2] = 40;

//If the player just started the level
if (global.mariostart == 0) {

    //The level has started
    global.mariostart = 1;
    
    //If the checkpoint exists
    if (instance_exists(global.checkpoint)) {
    
        //Destroy player object
        event_user(0);
        
        //Create new player object
        player_create(global.checkpoint.xcoor, global.checkpoint.ycoor);
    }
    
    //Create 'Mario Start!' text
    instance_create(0, 0, obj_mariostart);
}
    
//If the player came from another room
if (global.postchange != -1) {

    //Destroy player objects
    event_user(0);
    
    //Create the appropiate object at the given position
    with (obj_warpnode) {
    
        if (global.exit_id == myid)
            event_user(0);
    }
    
    //Allow warp
    global.postchange = -1;
}

//If the player was riding a yoshi on the previous room
if (global.mount == 1) {

    //Create a ridden yoshi
    with (instance_create(x, y, obj_yoshi)) {
    
        state = yoshistate.ridden;
    }
}

//Otherwise, if the player carried an item from the previous room
else if (global.carrieditem != noone) {
    
    //Create it
    with (instance_create(x, y, global.carrieditem)) {
    
        //Hold the item
        held = 1;
        
        //Set up the sprite
        if (global.carriedsprite != noone) {
        
            //Change the sprite
            sprite_index = global.carriedsprite;
            
            //Reset sprite
            global.carriedsprite = noone;    
        }
    }
    
    //Check object to follow
    event_user(15);
    
    //Check if the player exists and make it hold if so.
    if (instance_exists(obj_playerparent))
        obj_playerparent.holding = 1;
    
    //Otherwise
    else {
    
        if (instance_exists(follow))
            follow.holding = 1;
    }
    
    //Reset the variable
    global.carrieditem = noone;
}

