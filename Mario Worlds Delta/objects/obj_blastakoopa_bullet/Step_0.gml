/// @description Bullet logic

//If the bullet can follow mario
if (homing) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player is at the right
        if (obj_playerparent.x > x) {
        
            hspeed += 0.025;
            if (hspeed > 1)
                hspeed = 1;
        }
        
        //Otherwise, if the player is at the left
        else if (obj_playerparent.x < x) {
        
            hspeed += -0.025;
            if (hspeed < -1)
                hspeed = -1;
        }
    
        //If the player is below
        if (obj_playerparent.y > y) {
        
            vspeed += 0.025;
            if (vspeed > 1)
                vspeed = 1;
        }
        
        //Otherwise, if the player is above
        else if (obj_playerparent.y < y) {
        
            vspeed += -0.025;
            if (vspeed < -1)
                vspeed = -1;
        }
    
        /*
        //Declare a new variable that hold the direction between your own position and the position of obj_playerparent
        var new_dir = point_direction(x, y, obj_playerparent.x, obj_playerparent.y);
        
        //Declare diff, diff is the difference in angle between where this object is going.
        var diff = angle_difference(direction, new_dir);
        
        //Turn it
        direction -= min(1 * sign(diff), abs(diff));
        lastdir = direction;
        */
    }
}

//Destroy when outside view
if (outside_view(16))
    instance_destroy();

/* */
/*  */
