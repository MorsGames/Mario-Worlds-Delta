/// @description Hurt the player

//If the player is below it
if (other.bbox_bottom > yprevious+5) {

    //Hurt him
    with (other) event_user(0);
    
    //Destroy and regenerate the icicle
    if (shake == 2) {
    
        event_user(0);
        event_user(1);
    }
}

