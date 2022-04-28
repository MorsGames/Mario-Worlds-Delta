/// @description The player initial position

//If a checkpoint has been hit before, exit
if (global.checkpoint != noone)
exit;

//If the player did not came from another room
if (global.postchange == -1) {

    //Create a new player in this object
    with (player_create(xstart, ystart)) {
    
        //Put camera in position
        if (instance_exists(obj_levelcontrol))
            obj_levelcontrol.x = x;
    }
}

