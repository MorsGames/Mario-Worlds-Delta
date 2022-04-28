/// @description Perform actions based on animation

if (sprite_index == spr_confusedchuck) {

    //Throw a ball on the same direction
    with (instance_create(x+8*sign(xscale), y, obj_baseball)) hspeed = 1.5*sign(other.xscale);
    
    //Set the default pose
    image_speed = 0;
    image_index = 0;
    
    //Decrement balls
    balls--;
    
    //End throwing
    throwing = 0;
    
    //If there's balls left
    if (balls > 0)
        alarm[0] = 15;
    else {
    
        balls = choose(2, 3, 4, 5);
        alarm[0] = 60;
    }
}

//Otherwise
else
    event_inherited();

