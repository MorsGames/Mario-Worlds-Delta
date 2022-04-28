/// @description Dig out a mud ball

//If the chuck is at full health
if (hp == 3) {
    
    //Set kicking frame
    image_speed = 0.2;
    
    //Do not show ball
    ready = 2;
    
    //Generate a ball
    with (instance_create(x+18*sign(xscale), y, obj_mudball)) {
    
        hspeed = 0.5*sign(other.xscale);
        y--;
        vspeed = -3;
    }
}
else
    event_inherited();

