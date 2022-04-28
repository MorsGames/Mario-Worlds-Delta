/// @description Pop the bubble

//Stop movement of the player if not sliding
with (other) {

    if (sliding == 0) {
    
        hspeed = 0;
        vspeed = 0;
    }
}

//Destroy
alarm[1] = 1;

