/// @description Enable gravity

//Gravity is enabled
ready = 1;

//Move towards the player and build up speed
if (instance_exists(obj_playerparent)) {

    //Find it
    var direct = point_direction(x, y, obj_playerparent.x, obj_playerparent.y);
    
    //Set the motion
    direction = direct;
}

