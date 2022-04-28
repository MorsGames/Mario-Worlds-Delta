/// @description Bullseye banzai bill logic

//If the bullet can follow mario
if (homing) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //Declare a new variable that hold the direction between your own position and the position of obj_playerparent
        var new_dir = point_direction(x, y, obj_playerparent.x, obj_playerparent.y);
        
        //Declare diff, diff is the difference in angle between where this object is going.
        var diff = angle_difference(direction, new_dir);
        
        //Turn it
        direction -= min(1 * sign(diff), abs(diff));
        lastdir = direction;
    }
    
    //Otherwise
    else
        direction = lastdir
}

//Set the scale.
if (hspeed > 0) then image_index = 0;
else if (hspeed < 0) then image_index = 1;

//Set default depth when not overlapping a solid
if (!place_meeting(x, y, obj_solid)) {

    //If depth is set to 10, set it to -2
    if (depth = 10)
        depth = -2;
}

//Destroy when outside view
if (outside_view(32))
&& (depth != 10)
    instance_destroy();

