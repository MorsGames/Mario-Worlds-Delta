/// @description If the animation ends, create a yoshi of the same colour

//Create a yoshi
with (instance_create(x, y, obj_yoshi)) {

    colour = other.colour;
    vspeed = -1.5;
}

//Destroy
instance_destroy();

if (!global.yoshi_rescued) {

    // Create the message
    with (instance_create(0, 0, obj_message)) {
        
        // Grab the text
        inisection = "MSG_YOS";
        
    }

    global.yoshi_rescued = true;
    
}

