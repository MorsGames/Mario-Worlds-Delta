/// @description Lava Tides logic

//If the water is changing it's position.
if (vspeed != 0) {

    //Stop if the player has died
    if (instance_exists(obj_player_dead)) {
    
        vspeed = 0;
        exit;
    }

    //If the water collides with a 'End' modifier.
    if (collision_rectangle(bbox_left, y, bbox_right, y+15, obj_endmarker, 0, 1)) {
    
        //Stop moving
        vspeed = 0;
        
        //Snap in grid
        move_snap(16,16);
        
        //Repeat again
        alarm[0] = 360;
    }
}

//Update lava position.
lava.x = x;
lava.y = y;

