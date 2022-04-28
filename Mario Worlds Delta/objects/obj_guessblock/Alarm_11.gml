/// @description Choose the position

//Set the position
x = choose(xstart, xstart+48, xstart+96);

//If there's a block in that place, reroll
if (place_meeting(x, y, obj_guessblock))
    alarm[11] = 1;
else {

    mysolid.x = x;
    exit;
}

