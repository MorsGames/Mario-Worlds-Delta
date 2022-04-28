/// @description Destroy when falling down

if ((vspeed > 0) && (y > ystart-16)) {

    //Get 10 points
    with (instance_create(x-8, y, obj_score)) event_user(0);
    
    //Create a sparkle
    instance_create(x, y+8, obj_sparkle);
    
    //Destroy
    instance_destroy();
}

