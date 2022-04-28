/// @description Tides logic

//Update xx
xx--;

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
    
    //If the player does no longer exist, stop
    if (instance_exists(obj_player_warp))
    || (instance_exists(obj_player_dead))
        vspeed = 0;
}

//Depth
depth = -7;

//Update water position.
water.x = x;
water.y = y+4;

//Update position based on target
if (targety != ystart) {

    y = lerp(yprevious, targety, 0.025);
}

//Check for player
player = collision_rectangle(water.bbox_left, water.bbox_top, water.bbox_right, water.bbox_bottom,obj_playerparent,0,1);

//If player is overlapping this object and it's swimming.
if (player)
&& (player.swimming == true) 
&& (!instance_exists(obj_player_transform)) {

    //If this object can push
    if (push == true)
        if (!collision_rectangle(player.bbox_left-1, player.bbox_top+4, player.bbox_left, player.bbox_bottom-1, obj_solid, 1, 1))
            player.x -= 0.3;
}

