/// @description Map buddy logic

//If not moving...
if (state == 0) {

    if (speed == 0) {

        move_towards_point(dest_x,dest_y,1);
        state = 1;

    }

}

//If moving...
if (state == 1) {

    //If you reached your position
    if (point_distance(x,y,dest_x,dest_y) <= abs(speed)) {
    
        //Stop moving
        speed = 0;
        
        //Buffer position
        x = dest_x;
        y = dest_y;
        
        //Stop checkin for movement
        state = 2;
        
        //Animate
        alarm[0] = 2;
    
    }

}

//If not moving back, and told to do so...
if (state == 3) {

    if (speed == 0) {

        move_towards_point(xstart,ystart,1);
        state = 4;

    }

}

//If moving back to start...
if (state == 4) {

    //If you reached your position
    if (point_distance(x,y,xstart,ystart) <= abs(speed)) {
    
        //Destroy, you're done
        instance_destroy();
        
        //If switching players
        if (switching) {
        
            //If the player was switching players as well
            if (obj_mapplayer.status == mapstate.switching) {
        
                //Set back to idle
                obj_mapplayer.status = mapstate.idle;
                
                //Instantiate new buddy
                obj_mapplayer.player_wait = obj_mapplayer.wait_time-1;
                
            }
            
        }
    
    }
    
}

if (image_index > sprite_get_number(sprite_index)) {

    image_index -= sprite_get_number(sprite_index);
    
}

//Note current player
var current_player = global.player;
global.player = myplayer;

//Check for a climbing object
if (collision_point(x+xorig, y+yorig, obj_climb, 0, 0))
    is_climbing = true;
else
    is_climbing = false;
    
//Check for a swimming object
if (collision_point(x+xorig, y+yorig, obj_swim, 0, 0))
    is_swimming = true;
else
    is_swimming = false;

//Set sprites
if (speed == 0) {

    sprite_index = player_map();
    xscale = 1;

} else if (cos(direction) != 0) {

    if (sign(cos(direction)) == -1)
    
        xscale = -1;
        
    if (sign(cos(direction)) == 1)
    
        xscale = 1;

    sprite_index = player_map_side();
    
}

//Buffer direction
if (direction > 360) {

    direction -= 360;
    
}
    
//Animate walk
if (speed != 0 || animate || floor(image_index) != 1)

    image_speed = 0.125;
    
//Stand still
else {

    image_speed = 0;
    image_index = 1;
    
}

global.player = current_player;

