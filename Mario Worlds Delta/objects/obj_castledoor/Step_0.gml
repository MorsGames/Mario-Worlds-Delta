/// @description Open and close door

if (doortype == 0) //Set castle door depth...
    depth = 16;
else if (doortype == 1) //Set ghost house door depth...
    depth = 6;

if (open == 1) {

    //If first opening, make the castle door go up
    d_y -= 1;
    
    //If first opening, make the ghost house door open up
    if f < (sprite_get_number(spr_ghosthousedoor) - 1) {
        f += 0.125;
    } else {
        f = (sprite_get_number(spr_ghosthousedoor) - 1);
    }
}

//If the castle door has reached the top, prevent from going more
if (d_y < -48) && (open == 1)
    open = 2;

//Close the door
if open == 3 {
    d_y += 1;
    
    //Ghost door
    if (doortype = 1) {
        if f > 0 {
            f -= 0.125;
        } else {
            if thud == false {
                audio_play_sound(snd_thud,0,0);
                thud = true;
            }
            f = 0;
        }
    }
}

//Next room
if (d_y >= 0) && (open == 3) {

    if (doortype = 0) && (thud = false) {
        audio_play_sound(snd_thud,0,0);
    }
    room_goto(nextroom);
    
}

