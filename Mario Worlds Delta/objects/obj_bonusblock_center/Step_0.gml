/// @description Check if the other blocks are done

var done;
done = 1;

//Check other blocks
with (obj_bonusblock) {

    if (image_speed <> 0) {
    
        done = 0;
        break;
    }
}

//If all blocks are done
if ((done == 1) && (check == 0)) {

    check = 1;
    obj_bonusblock.used = 2;
}

///Begin match

var done;
done = 1;

//Check other blocks
with (obj_bonusblock) {

    if (speed <> 0) {
    
        done = 0;
        break;
    }
}

//If all blocks are done
if ((done == 1) && (check == 1)) {

    check = 2;
    alarm[0] = 60;
}

