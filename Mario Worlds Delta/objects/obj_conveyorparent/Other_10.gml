/// @description Toggle conveyor direction

//If the conveyor can toggle it's direction
if (toggle == true) {

    //If moving right
    if (image_speed > 0)
        image_speed = -image_speed;
        
    //Otherwise, if moving left
    else if (image_speed < 0)
        image_speed = -image_speed; 
}

