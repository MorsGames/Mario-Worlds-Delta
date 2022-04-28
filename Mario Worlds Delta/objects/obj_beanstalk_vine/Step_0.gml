/// @description Check if the beanstalk is stopped and stop if so.

if (mom.vspeed == 0) {

    //Stop and snap in grid.
    vspeed = 0;
    move_snap(8, 16);
    
    //Animate
    image_speed = 0.2;
}

