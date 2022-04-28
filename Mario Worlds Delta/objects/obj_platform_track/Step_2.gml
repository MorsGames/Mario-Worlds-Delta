/// @description Track platform logic

//Inherit event
event_inherited();

//If active
if (global.onoff_block == 0) {

    //Resume movement
    if (prevspd != 0) then { speed = prevspd; prevspd = 0; }

    //If not moving
    if (speed == 0) {
    
        image_speed = 0;
        image_index = 0;
    }
    
    //Otherwise, animate
    else    
        image_speed = 0.2;
}

//Otherwise, if not active
else {

    //Remember previous speed
    if (prevspd == 0) then { prevspd = speed; speed = 0; }    
    
    //Do not animate
    image_speed = 0;
    image_index = 0;
}

